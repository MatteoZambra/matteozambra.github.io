---
title: "Mlght-ml"
classes: wide
layout: single
permalink: /side-projects/mlght/
author_profile: true
---



A lightweight framework to automate typical machine learning workflows. Based and build on the scikit-learn library.

> [Framework repo](https://github.com/MatteoZambra/mlghtml)

> [Examples repo](https://github.com/MatteoZambra/mlghtml-examples)

# Objective
This framework has been conceived and developed to respond the necessity of automating and standardizing the common machine learning pipeline, that is data normalization, cross-validation, training and getting the predictions, unscale the predictions to have them in the original data space.

# Functionalities
### The `trainer` interface
Taking inspiration from the Pytorch Lightning library, the framework allows the user to instantiate a `trainer` class, that manages to automate all of the steps outlined above. Each step is optional, the behavior depends on the user's choices. 

### Normalization and denormalization
Particular attention has been put on data normalization and denormalization. Often, data needs to be normalized before model training. The model is then fit on scaled data. In production environment, the user might need to have a prediction in the data original scale. The `trainer` interface automatically denormalizes data when the `predict` method is called. The handles all the security checks to ensure that data are normalized and denormalized in the correct order. 

### Model interpretability
The framework also allows to retrieve the model parameters in the data original space. This is crucial in the context of model interpretability. As of the current state, the only models class that supports parameters unscaling is the `sklearn.linear_model` context. The linear model, even if an user-defined model, should be endowed with `coef_` and `intercept_` attributes.

### Resettable scalers
The framework abstracts the scikit-learn's `Scaler` class and endows it with a `reset` method. In this way, the same scaler can be kept by the trainer class with no need of re-instantiating it, and allows to delete the scaling parameters saved during scaler fitting. This allows to keep the scaler as a `trainer`'s attribute. Once the model fit is complete, the `trainer` class can be entirely saved. With it, the scaler is included. So in production environment the saved instance provides all the necessary means to perform inference.

### Ensemble learning
The framework natively supports ensemble learning. If the user specifies the `trainer`'s argument `n_estimators = 1`, then ensemble learning is not performed. The predictions are aggregated according to the `np.median` function. That is, the final model prediction is the median of the ensemble member's predictions.

## Minimal example
The following snippet illustrates a minimal example of the use of the `mlght-ml` framework.
```python
# main
from sklearn.linear_model import LinearRegression
from sklearn.metrics import root_mean_squared_error as rmse
from sklearn.model_selection import train_test_split

from mlght.core.training import Trainer
from mlght.core.scalers import ResettableStandardScaler

from project.src.utils.data import get_data
from project.src.utils import evaluate

# --- Import preprocessed data
# Preprocessing: data cleaning, feature engineering.
# These steps are preminently project-dependent.
# As such, they can hardly be abstracted
X, y = get_data()
Xtrain, ytrain, Xtest, ytest = train_test_split(X, y, test_size = 0.25)

# --- Instantiate the trainer
# `mlght.core.training.Trainer` is the core class of the framework.
trainer = Trainer(
    base_estimator    = LinearRegression,            # Regressor, NOT instantiated!
    estimator_name    = "LinearRegression",          # Name of the estimator
    estimator_kwargs  = dict(fit_intercept = True),  # Estimator initialization keywords
    n_cv_splits       = 5,                           # Number of k-fold splits
    n_estimators      = 10,                          # Number of estimators. If > 1, then ensemble learning
    eval_metrics      = {"RMSE": rmse},              # Evaluation metrics
    input_normalizer  = ResettableStandardScaler,    # Input scaler, NOT instantiated!
    target_normalizer = ResettableStandardScaler     # Output scaler, NOT instantiated!
)

# --- Fit
trainer.fit(Xtrain, ytrain)

# --- Predict
# Columns and indices are passed to make `ypred` and `ytest` fully compatile
ypred = trainer.predict(Xtest, ytest.columns, ytest.index)

# --- Case-specific evaluation framework
evaluate(ytest, ypred)
```

# Examples
The examples repository linked above reports thoroughly the use cases of 
* model parameters unscaling;
* an example of framework use on a real-world dataset, including an example with a non-scikit-learn predictive model. That is, a Pytorch module;
* a comparison between the use case of the `mlght-ml` framework and the scikit-learn's native `Pipeline` orchestration tool.
