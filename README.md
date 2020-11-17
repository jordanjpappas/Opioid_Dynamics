# Dynamics in Drug-related Disorders from 1999-2018 in the U.S.
* Disclaimer: This analysis is currently preliminary and pending publication.

### Coauthors:
- Jordan Pappas, University of Rochester
- Andrew Boslett, University of Rochester

### Abstract:
The U.S. is currently in the midst of a drug overdose epidemic. In 2018, 3.6% of the U.S. population misused prescription pain relievers, and there were 67,376 drug overdose deaths, more than X times the count in 1999. As the scale of the epidemic has grown, there has been a corresponding increase in the academic literature on drug overdose deaths, with studies highlighting trends in drug overdoses across time and space and characteristics of drug overdose decedents.

Yet, drug overdose deaths are only a fraction of all deaths associated with drug use. People die from drug-related disorders, which reflect long-term addiction and behavior change due to drug use. In this paper, we fill a gap in the literature by describing trends in drug-related disorders in the U.S. from 1999 to 2018. We identify trends nationally and by state, focusing on areas with large relative changes in deaths involving drug-related disorders over time. We examine trends in drug-related disorders by drug class, with a particular focus on opioid-related disorders. We describe demographic and socio-economic characteristics of decedents of drug-related disorders and compare them to those of decedents from drug overdoses.



![GitHub last commit](https://img.shields.io/github/last-commit/jordanjpappas/Opioid_Dynamics)

![GitHub issues](https://img.shields.io/github/issues-raw/jordanjpappas/Opioid_Dynamics)

![GitHub pull requests](https://img.shields.io/github/issues-pr/jordanjpappas/Opioid_Dynamics)

![GitHub all releases](https://img.shields.io/github/downloads/jordanjpappas/Opioid_Dynamics/total):

![GitHub](https://img.shields.io/github/license/jordanjpappas/Opioid_Dynamics)



# Preview

![](https://github.com/jordanjpappas/Portfolio/blob/master/images/OP-overdose_and_disorder_trends.png)
Figure 1: Trends in deaths from drug overdoses and drug-related disorders from 1999-2018. Notes: In this figure, we display the annual number of deaths from drug overdoses and drug-related disorders from 1999-2018. These estimates are based on National Center for Health Statistics’ Multiple Cause of Death Data.



# Table of contents

- [Project Title](#project-title)
- [Preview](#preview)
- [Table of contents](#table-of-contents)
- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)
- [Contribute](#contribute)
- [License](#license)
- [Footer](#footer)



# Installation
[(Back to top)](#table-of-contents)

1. Download and install RStudio (https://rstudio.com/products/rstudio/download/)



# Usage
[(Back to top)](#table-of-contents)


Scripts:
* Analysis is run in the order shown below.
  - 0-initialization-file.R: Load packages and set directories.
  - 1-2-3-plot_disorders_and_overdose_trends.R: Plot trends from 1999-2018 in:
    - 1
      - (a) # of drug overdoses, total
      - (b) # of drug overdoses, with filters on F1* contributing causes of death
      - (c) # of total non-drug overdose deaths with either CC/underlying cause of death with a F1* cause
    - 2
      - (a) # of drug overdoses, total
      - (b) # of drug overdoses, with filters on F1* contributing causes of death
      - (c) # of total non-drug overdose deaths with either CC/underlying cause of death with a F1* cause
      - (d) # of opioid overdoses, total
      - (e) # of opioid overdoses, with filters on F1* contributing causes of death
    - 3
      - (a) # of total non-drug overdose deaths with an underlying cause of death (UCOD) with a F1* cause
      - (b) # of total non-drug overdose deaths with a contributing, but not underlying, cause of death with a F1* cause
  - 1a-set_up_mortality_database.R: Import, aggregate, and filter mortality data to set up final mortality database
  - 1a-set_up_overdose_database.R: Import, aggregate, and filter overdose data to set up final overdose database
  - 1b-pull_ICD_vectors.R: Pull relevant ICD codes from selected topics in ICD .txt file
  - 1c-extract_drug_related_disorders.R: Extarct mortality database deaths that involved drug use but weren't drug overdoses
  - 1d-calculate_summary_statistics.R: Calculate means for select variables across various time periods.
  - 4-plot_frequency_of_common_UCODs_where_CC_F1.R: Plot top-15 most common underlying causes of death (UCOD) with non-drug overdose deaths with a F1* contributing, but not underlying, cause of death for 1999-2018 and 2015-2018
  - 5-plot_frequency_of_common_CCs_where_UCOD_F1.R: Plot top-15 most common contributing causes of death with non-drug overdose deaths with a F1* underlying cause of death (UCOD) for 1999-2018 and 2015-2018
  - 6a-plot_age_adjusted_mortality_rates_two_dots_by_state.R: Plot state-by-state dot-plots of mortality rates per 100,000 people for drug overdoses and drug-related disorders for 2018
  - 6b-plot_age_adjusted_mortality_rates_two_dots_by_county.R: Plot top 15 county-by-county dot-plots of mortality rates per 100,000 people for drug overdoses and drug-related disorders for 2018
  - 7-plot_disorders_and_overdoses_demograhic_trends.R: Plot variation in sex, race, and ethnicity of decedents for drug overdoses and drug-related disorders for 1999-2018
  - 8-plot_mortality_median_age_for_F1.R: Plot variation in median age of decedents for drug overdoses and drug-related disorders for 1999-2018



# Development
[(Back to top)](#table-of-contents)



# Contribute
[(Back to top)](#table-of-contents)



# License
[(Back to top)](#table-of-contents)



# Footer
[(Back to top)](#table-of-contents)


