#' ---
#' title: "Preparation of data Pepper Frailty Study"
#' author: 'Tiffany Cortes ^1^, Alex Bokov ^1^, Roman Fernandes ^1^, Sara Espinoza ^1^'
#' abstract: |
#'   | Merging and cleanup of i2b21 data
#' documentclass: article
#' description: 'Manuscript'
#' clean: false
#' self_contained: true
#' number_sections: false
#' keep_md: true
#' fig_caption: true
#' css: 'production.css'
#' output:
#'   html_document:
#'     toc: true
#'     toc_float: true
#' ---
#+ init, echo=FALSE, message=FALSE, warning=FALSE,results='hide'
# Init ----
debug <- 0;
knitr::opts_chunk$set(echo=debug>0, warning=debug>0, message=debug>0);
# Global project settings ----
inputdata <- c();
source('config.R',local=T,echo=debug>0);
# inputdata <- c(dat0='data/SIM_SDOH_ZCTA.xlsx'          # census data by ZCTA
#                ,cx0='data/SIM_ALLCMS.csv'              # RSA-ZCTA crosswalk
#                ,rsa0='data/SIM_RSAv4 SCD RSRs.csv'     # outcomes (RSR)
#                ,dct0='data/data_dictionary.csv'        # data dictionary for the
#                                                        # dat1 dataset that _this_
#                                                        # scriport produces
#                ,dat1='SDOH_RSR_201X_prelim.csv'        # the dat1 dataset
#                ,dat2='SDOH_RSR_201X_scaled_prelim.csv' # the scaled version of
#                                                        # dat1
# );

# Load libraries ----
library(rio); library(dplyr); library(tidbits);  # data handling


# Local project settings ----
# overwrite previously set global values if needed
if(file.exists('local.config.R')){
  source('local.config.R',local=TRUE,echo = debug>0);
  if(exists('.local.inputdata')){
    inputdata <- replace(inputdata,names(.local.inputdata),.local.inputdata)};
};

# Local functions ----


# Import data ----

# Merge data ----
#' # Merging and Preparing Data
#'

# data prep ----
# Scale the numeric variables
# Create and modify factors
# Handle dates
# Assign train and test data
# exclude un-needed columns
# link in per-visit EFI values
# Export train, test, and combined data
