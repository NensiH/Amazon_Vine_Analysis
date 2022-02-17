# Amazon_Vine_Analysis

## Overview
The purpose of the project is to analyze Amazon reviews written by members of the paid Amazon Vine program. In order to complete this analysis, we have collected reviews data regarding video game subcategory of Amazon and used Pyspark to conduct the ETL process of extracting, transforming and connecting the data to a database using Google Colab Notebook, PostgreSQL and AWS server. Once this process was complete an analysis was carried out to determine if there was a favorable review bias from the Vine members in our data set.

## Resources
- Software: Google Colab Notebook, PostgreSQL , pgAdmin 4, AWS
- AWS
  - RDS
  - S3
- Python
  - pySpark
  - Pandas
- Data Source: [Amazon Review datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt), [Video Games Review dataset](https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Video_Games_v1_00.tsv.gz)

## Results: 
During this analysis, I wanted to answer a few key questions:

**Total number of reviews**

- How many Vine reviews and non-Vine reviews were there?

**Total number of 5-star reviews**

- How many Vine reviews were 5 stars? 

- How many non-Vine reviews were 5 stars?

**Percentage of 5-star reviews**

- What percentage of Vine reviews were 5 stars? 

- What percentage of non-Vine reviews were 5 stars?

## Summary: 

