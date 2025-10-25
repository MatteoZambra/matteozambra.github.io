---
title: "Previous Efforts"
classes: wide
layout: single
permalink: /previous/
author_profile: true
---


## Doctorate at IMT Atlantique

<table>
  <tr>
    <td style="padding-right: 50px; font-size: 18px;"><b>Institution</b></td>
    <td style="padding-right: 50px; font-size: 18px;">Institute Mines-Télécom Atlantique Bretagne-Pays de la Loire</td>
  </tr>
  <tr>
    <td style="padding-right: 50px; font-size: 18px;"><b>Research Unit</b></td>
    <td style="padding-right: 50px; font-size: 18px;">Lab-STICC, UMR CNRS 6285</td>
  </tr>
</table>

### Scientific scope
Focused on ocean data processing, my Ph.D. Thesis aimed to answer the question:
> "How can we exploit the complementary information conveyed by diverse, multi-sensor and spatio-temporally heterogeneous data to improve the characterization of the sea surface state?"

This problem was framed as a geophysical inverse problem. That is, to retrieve a bigger picture from its partial observations. In this case, the bigger picture is the dynamical behavior of sea-surface wind speed and the partial observations are the output of the measurement methods that can be use to gauge the phenomenon. Wind speed at the sea surface is an important parameter for a vast range of anthropic activities. The spatial extent of the sea surface and the strong spatio-temporal variability of wind speed makes each individual measurement method undercomplete and uncapable of capturing all of wind speed complexity.

### Methodological framework
The methodological approach involved an end-to-end trainable framework, the 4DVarNet. This framework bridges traditional physics-based geophysical inversion schemes and deep learning modelling. This allows us to exploit the geoscientific theoretical foundations, the flexibility and representation power of deep learning and the availability of large data sets. In the case of my work, the further challenge is to leverage *multimodal* datasets. The joint model-based and data-driven approach allows to use data-driven methods to learn complex, high-dimensional dynamical systems. For reference, see
- [the *core*](https://github.com/CIA-Oceanix/4dvarnet-core) 4DVarNet repository
- [the *starter*](https://github.com/CIA-Oceanix/4dvarnet-starter) version
- and [the original paper](https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2021MS002572)

*Note*. I did not contribute to the development of 4DVarNet. The original authors are listed in the repository and in the publication mentioned above.


### Acknowledgements
My Thesis was funded by [Agence National de la Recherche (ANR)](https://anr.fr/) and co-funded by [Naval Group](https://www.naval-group.com/en). My thesis work, framed in the context of the project ["AI Chair OceaniX"](https://cia-oceanix.github.io/), was supervised by [Prof. Ronan Fablet](https://rfablet.github.io/) as main supervisor; and by [Prof. Nicolas Farrugia](https://nicofarr.github.io/) and [Prof. Dorian Cazau](https://osmose.ifremer.fr/people/1) as co-supervisors.

### Relevant experiences
##### IEEE OCEANS 2023-Limerick Conference
Attended in June 2023 in Limerick, Ireland. 
<table>
    <tr>
        <td style="padding-right: 50px; font-size: 16px;"><b>Motivation</b></td> 
        <td style="padding-right: 50px; font-size: 16px;">Public presentation and sharing of scientific results</td>
    </tr>
    <tr>
        <td style="padding-right: 50px; font-size: 16px;"><b>Modality</b></td> 
        <td style="padding-right: 50px; font-size: 16px;">Oral Presentation</td>
    </tr>
</table>

##### Company visit at Naval Group, 83200 Toulon, France
A brief stay at Naval Group, from May to June 2023
<table>
    <tr>
        <td style="padding-right: 50px; font-size: 16px;"><b>Motivation</b></td> 
        <td style="padding-right: 50px; font-size: 16px;"> Curiosity for the R&D process in the context of civil and military shipbuilding </td>
    </tr>
    <tr>
        <td style="padding-right: 50px; font-size: 16px;"><b>Objective</b></td> 
        <td style="padding-right: 50px; font-size: 16px;"> Know-how exchange and exposition to project managing in industrial scope </td>
    </tr>
</table>

##### Teaching activities support
The Ph.D. students had the possibility to support the course teachers in the didactical activities.\
Spring 2021, 2022 and 2023.
<table>
    <tr>
        <td style="padding-right: 50px; font-size: 16px;"><b>Activities</b></td> 
        <td style="padding-right: 50px; font-size: 16px;"> Computer Vision &nbsp; | &nbsp; Computational Imaging </td>
    </tr>
    <tr>
        <td style="padding-right: 50px; font-size: 16px;"><b>Objective</b></td> 
        <td style="padding-right: 50px; font-size: 16px;"> Students support with assigned computer projects development </td>
    </tr>
</table>

### Contributions
We contributed with two original papers and one conference proceeding. In the following, a brief description of the main work axes.

##### <i class="fa-regular fa-file-lines"></i> Multimodal Learning-based Reconstruction of High-resolution Spatial Wind Speed Fields
Published in January 2025, the work has been done between 2022 and 2023.\
<i class="fa-solid fa-angles-right"></i> [Original article](https://www.cambridge.org/core/journals/environmental-data-science/article/multimodal-learningbased-reconstruction-of-highresolution-spatial-wind-speed-fields/18946D2FE8B1B72A9334DD2C2FF68909) in Environmental Data Science.\
<i class="fa-solid fa-angles-right"></i> [Arxiv preprint](https://arxiv.org/abs/2312.08933), posted in December 2023.

In this work, we used the 4DVarNet framework to reconstruct high-resolution sea-surface wind speed fields. Our goal was to leverage wind speed data across multiple spatiotemporal scales to maximize the contribution of each input source. Using simulated data, we integrated diverse pseudo-observations—including satellite images, in situ measurements, and reanalysis products—to capture wind speed variability more effectively. Extensive numerical experiments show that this multimodal approach outperforms traditional deep learning inversion methods by successfully combining complementary information from various inputs. We also prove that the scheme may benefice of further capacity by processing separately the automatically learned features of the heterogeneous partial observations.  

##### <i class="fa-regular fa-file-lines"></i> Learning-Based Temporal Estimation of In-Situ Wind Speed From Underwater Passive Acoustics
Published in August 2023, the work has been done in 2022.\
<i class="fa-solid fa-angles-right"></i> [Original article](https://ieeexplore.ieee.org/abstract/document/10229988) in IEEE Journal of Oceanic Engineering.

In this work, we aimed to reconstruct the sea-surface wind speed using underwater passive acoustics. This problem is, unlike the one presented above, local in space. We build on previous work that leveraged machine learning techniques to invert underwater acoustics to estimate wind speed. The novelty proposed by our work consisted in the reconstruction of the wind speed time-related dynamical patterns. The 4DVarNet scheme represents a suitable choice given its physical foundations. Our experiments on real data demonstrate that the our proposed approach outperforms existing data-driven techniques, achieving up to a 16% reduction in RMSE on wind speed reconstruction. The study emphasizes the role of temporal dynamics in underwater acoustic data and suggests that incorporating multimodal information can further enhance robustness, particularly in cases of missing acoustic data.


## Research Fellowship at CCNL

<table>
  <tr>
    <td style="padding-right: 50px; font-size: 18px;"><b>Institution</b></td>
    <td style="padding-right: 50px; font-size: 18px;">University of Padova</td>
  </tr>
  <tr>
    <td style="padding-right: 50px; font-size: 18px;"><b>Research Unit</b></td>
    <td style="padding-right: 50px; font-size: 18px;">Computational Cognitive Neuroscience Lab</td>
  </tr>
</table>

### Scientific scope
My research at CCNL was focused on the development of a biologically plausible learning algorithm for a class of deep learning models, Deep Belief Networks (DBN). The interest in this particular architecture stems from its bottom-up data processing and top-down generative capabilities. This scheme makes it particularly appealing to use DBN because of their conceptual similitude to human brains visual neural networks.

The question that my work aimed to answer is
> Can we use a DBN to emulate the development of the numerosity perception skill in humans? Do DBN follow a similar numerosity discrimination pattern? 

### Achivement
The outcomes of our research have been published in the following original paper.

##### <i class="fa-regular fa-file-lines"></i> A Developmental Approach for Training Deep Belief Networks  
Published in December 2022, the work has been done between in 2020.\
<i class="fa-solid fa-angles-right"></i> [Original article](https://link.springer.com/article/10.1007/s12559-022-10085-5) in Cognitive Computation.

In this work, we proposed an alternative training algorithm for DBNs, the iterative-DBN (iDBN). Unlike classical DBNs, which are trained in a greedy layer-wise way, our proposed alternative better emulates the bottom-up visual stimulus processing mechanism of human brain visual cortex. A first part of the study compares our algorithm with the classical layer-wise DBN. This part serves the purpose of showing the overall performance alignment and the equivalency of the learned features. Next, we assess the numerosity discrimantion skill, that is how the model can recognize the number of objects in a visual stimulus. In our proposed model the numerosity discrimination pattern aligns well with the one exhibited by human learners, and is robust against catastrophic forgetting scenarios.