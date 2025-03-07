## Predicting A Champion:
Every Spring we get hit with the March Madness fever, and with that a wave of brackets in hopes of hitting the elusive perfect bracket. As years go on, and millions of entries casted with a perfect bracket still yet to be redeemed a natural question arises. 
- Is there an art to all the madness, or is it pure randomness?

As a recovering degenerate gambler, I side with the optimists, with a clear answer to this madding question. 
With that, this project offers a predictive model that will determine the winner of any matchup and in turn the champion of March Madness.

Specifically, the Jupiter notebook walks us through all the steps from:
- Data Preprocessing:
  Merging all datasets and feature engineering to allow for predictions by matchup
- Model Fitting:
  Fitting an XGBoost Classification model and use of Cross-validation and gridsearch to find the optimal hyperparameters
- Simulation:
  Creation of simulation function and testing on the 2024 Season
