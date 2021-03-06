{{ config(materialized='table') }}

with source_data as (

   SELECT TO_DATE(Date,'MM/DD/YYYY')  DATE,
   GROWTH_FACTOR_OF_NEW_DEATHS,
   CASE_FATALITY_RATE,
   CASE_RECOVERED_RATE,
   GROWTH_FACTOR_OF_NEW_CASES
   FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_DEEPANSHU_GOYAL
          
)

select *
from source_data