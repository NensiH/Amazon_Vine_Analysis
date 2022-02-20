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

The Vine table was exported from pgAdmin and Python Pandas was used against the data. The Vine table contained 1785997 rows of data.

<img width="668" alt="Screen Shot 2022-02-19 at 6 43 15 PM" src="https://user-images.githubusercontent.com/92277581/154824013-f3077bc9-515f-4ed8-a9d5-e83261aba31f.png">

The Vine table data was transformed to show only reviews where there were 20 or more reviews for the product. This new table created using PostgreSQL reduced the dataset to 65379 rows of video game Amazon reviews.

<img width="893" alt="Screen Shot 2022-02-19 at 6 48 51 PM" src="https://user-images.githubusercontent.com/92277581/154824128-966772ed-7ae5-4c64-a537-bcf5304e6c12.png">



During this analysis, I wanted to answer a few key questions:

### **Total number of reviews**

- How many Vine reviews and non-Vine reviews were there?
  - There are **4291** vine review and **1781706** non-vine reviews.

### **Total number of 5-star reviews**

- How many Vine reviews were 5 stars? 
  - **1607** Vine reviews were 5 stars.

- How many non-Vine reviews were 5 stars?
  - **1025317** non-Vine reviews were 5 stars.
  
### **Percentage of 5-star reviews**

- What percentage of Vine reviews were 5 stars? 
  - **37%** of Vine reviews were 5 stars.
  
- What percentage of non-Vine reviews were 5 stars?
  - **57%** of non-Vine reviews were 5 stars.
  
<img width="433" alt="Screen Shot 2022-02-18 at 9 34 10 AM" src="https://user-images.githubusercontent.com/92277581/154815175-67e66a5e-4dc4-49bf-bc85-8adda4e7bca1.png">
  

## Summary: 
After looking that the results, I would conclude that there is a positivity bias for reviews in the Vine program. 37% of the reviews in the Vine program were 5 stars reviews whereas the percentage in the non-Vine reviews is 57%. This describes a positivity bias for reviews in the Vine program.

Additionally we could analyse the statistical distribution (mean, median and mode) of the star rating for the Vine and non-Vine reviews. It would also be interesting to determine if male or female are more likely to leave a review in general versus how likely are they to leave a 5-star review as a Vine member or unpaid reviews.
