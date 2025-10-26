---
title: "GeA"
classes: wide
layout: single
permalink: /side-projects/gea/
author_profile: true
---

Backbone of an ecosystem simulation tool 

> [Github repo](https://github.com/MatteoZambra/gea), code and detailed documentation.
>
> ⚠️ In progress.

## The project
This side project puts the basis for an ecosystem simulation tool.

The ecosystem is a complex interaction between the physical domain, atmospheric factors and the evolutionary and behavioral dynamics of the vegetal and animal species living in the habitat. To simulate the ecosystem means to model these interactions.

The long term objective is to set up a simulation tool to assess the ecosystem's response to climatic changes, and to the arrival of exotic species. Both these factors represent an evolutionary stimulus to a system in equilibrium. Being an environment a potential resources pool for the anthopic communities residing in it, these exogenous drivers may pose challenges to the resources continuity.

## Development

The steps I follow are listed below.

| Axis | Status | Actions |
| --- | --- | --- |
| Domain | ✅ | The definition of the domain starting for a Digital Terrain Model (DTM). On this domain the computation of water resources dynamics is computed. |
| Domain | ✅ | Write a set of classes to simulate the ingestion of rainfall, temperature and solar radiation data. These are the main driving forces for water resources dynamics, which is the first layer on which the dynamics of living species will be defined. |
| Modeling | ✅ | Perform the soil water balance simulation. The main components of the hydrological cycle (rainfall, infiltration, evapotranspiration and water vertical leaching) are implemented in the computation. This allows to simulate the soil water content dynamics for the given time window. |
| Domain | 🛠️ | Include the hydric bodies (rivers, creeks, lakes) and groundwater in the hydrological cycle. |
| Domain | 🛠️ | Both improve the realism of data-generation procedures and give the possibility to interact with real data. |
| Modeling | 🛠️ | Improve the realism of the water balance dynamics including more sophisticated infiltration, leaching and evapotranspiration models. |
| Domain | 🛠️ | Scale the model to a larger region. Assess the possibility to use single catchements as region elements and not the DTM patches. |
| Modeling | 🛠️ | Superpose the distribution and diffusion of living species as a function of water resources availability. Plants first, animals later. Herbivores depend on the plants. Carnivores depend on the herbivores. |

## Further work
The resolution of the work-in-progress points above represents an improved likelihood of the project, now a simple proof-of-concept, and its probability to upscale to an actionable prototype.

The documentation in the Github repo discusses both the conceputal and technical improvements.