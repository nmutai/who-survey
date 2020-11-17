READ THIS DOCUMENT BEFORE YOU START
--------------------------------------------------------------------------------
PACKAGE FOR CALCULATING DISAGGREGATED DATA USING HOUSEHOLD SURVEY DATA IN R

This package was developed to exemplify the calculation of disaggregated data 
using household survey data in R. This package contains:

1. An Excel file containing raw data from a survey sample: Sample_dataset_R.csv;

2. An R script containing the codes for the calculation of disaggregated 
data in R: Commands_R.R, hereinafter referred to as the “Codes”;

3. A PDF file containing the results from the analysis of the raw data 
from the survey sample in R: Results_R.pdf.

--------------------------------------------------------------------------------
COPYRIGHT,DISCLAIMERS AND TERMS OF USE

The Codes for the calculation of disaggregated data are
Copyright (©) World Health Organization, 2017.

You (the “User”) may copy, redistribute and adapt the Codes for non-commercial 
purposes, provided the Codes are appropriately acknowledged. In any use of the 
Codes, there should be no suggestion that WHO endorses any specific 
organization, products or services. The use of the WHO logo is not permitted. 

Retained Rights. Except as otherwise indicated herein, WHO owns and shall retain 
all right, title and interest in and to the Codes, including all intellectual 
property rights embodied therein, including (i) all of the service marks, 
trademarks, trade names or any other designations associated with the Codes; and 
(ii) all copyrights, patent rights, trade secret rights, and other proprietary 
rights relating to the Codes. Nothing contained in these Terms of Use shall be 
deemed to convey to  you any title or ownership in the Codes or the related 
documentation.

Limitation of WHO’s liability. WHO shall not be liable for any loss or damage 
arising directly or indirectly in connection with, or resulting from, your use of 
the Codes. WHO further expressly excludes liability for any indirect, special, 
incidental or consequential damages which may arise in respect of the Codes and 
their use, and the results thereof. 

No WHO warranties. WHO makes no warranty with respect to the codes, and disclaims 
all statutory or implied warranties, expressed or implied, as to the accuracy, 
completeness or usefulness of any information, apparatus, product, or process 
related to the Codes, including, without limitation, to any warranty of design or 
fitness for a particular purpose, even if WHO has been informed of such purpose. 
WHO does not represent that the use of the Codes would not infringe third 
parties' proprietary rights. WHO provides the Codes “as is”, and does not 
represent that the codes are operational, free of defects, virus free, able to 
operate on an uninterrupted basis, or appropriate for your technical system.
Third-party software needed to use the codes. In order to use the codes for the 
calculation of disaggregated data, you will need to install the “R” statistical 
software. 

Third-party software user license(s) and use. To the extent you are required to 
enter into a user license in order to use “R”, WHO is not a party to any such 
license, and WHO therefore disclaims all liability, responsibility, and/or 
involvement with any such license. WHO shall not be held liable or responsible 
for either any breach of any of the terms and conditions of the “R” user license 
by you, or any damages arising from your use of “R”.

No WHO endorsement of third-party software. The use of “R” software does not 
imply that “R” is endorsed or recommended by WHO in preference to others of a 
similar nature.

--------------------------------------------------------------------------------
DESCRIPTION

1. The R codes estimate the proportion of skilled birth attendance and 
population size (weighted sample size) by wealth quintile, education level and 
place of residence (urban/rural), taking into account the complex survey sampling 
design (stratification, clustering and weights).

2. Descriptions of the variables are included in the heading of the R script
Commands_R.R.

3. The default method used to estimate the standard errors for the proportions 
and sample sizes in R is the Taylor series linearization method. For more 
information please visit: http://cran.r-project.org/web/packages/survey/survey.pdf.

Note: The codes were tested using R version 3.31-5 under Mac OS 10.12.3 only.

--------------------------------------------------------------------------------
CONTACT FOR REPORTING BUGS/COMMENTS

Should you encounter any problems with these codes, please send an email with a 
clear description of the identified problem to bz117@georgetown.edu and 
equity_monitoring@who.int, specifying in the subject line that it concerns the 
Data_disaggregation_survey_R folder. 

--------------------------------------------------------------------------------
ACKNOWLEDGEMENT

The sample dataset and the statistical codes for Stata were prepared by the 
World Health Organization. They were annotated and translated into R, SAS and 
SPSS by Bingsong Zhang (Georgetown University, Washington D.C., USA).
