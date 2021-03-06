## Physiolibrary.models

A set of cardiovascular models in Modelica and extension libraries based on [http://www.physiolibrary.org] v2.3.1 including supporting scripts for generating list of initial values.

Currently the circulation hemodynamic models are included based on description and literature made by Burkhoff et al., Meurs et al., Smith and Fernandez et al. and an example of complex combined model by Kalecky.
This model set is a supplementary material to an article *Lumped Models of the Cardiovascular System of Various Complexity* by Filip Ježek, Tomáš Kulhánek, Karel Kalecký and Jiří Kofránek.

### Installation

Download the model and open in the following order:
  * Physiolibrary/...   from www.physiolibrary.org
  * Cardiovascular/Cardiovascular.mo
  
### Run an example
Run any model with a green Play triangle, e.g. Cardiovascular.Model.Meurs.HemodynamicsMeurs or Cardiovascular.Model.Complex.Cardio. With decomposed models, you can redeclare the submodels wby any other compatible submodel of same subsystem (in Dymola use right context menu - change class - all matching choices - select you choice).

You can watch an instructional video at [https://youtu.be/wcipWB1Ngnw]

### Model compatibility
The model is available to the public use. Although the model is implemented in the universal Modelica language, minor differences in interpretation persist among the various tools. The model has been developed and tested in the Dassault Systémes Dymola 2018 tool only. Other tools (Wolfram SystemModeler, OpenModelica etc) might be used as well, but we do not guarantee proper functionality.

Citable DOI https://doi.org/10.5281/zenodo.1098407
