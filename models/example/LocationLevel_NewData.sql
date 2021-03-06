{{ config(materialized='table') }}

with source_data as (

   SELECT LOCATION_LEVEL,PROVINCE,
    SUM(NEW_CASES) NEW_CASES,
   SUM(NEW_ACTIVE_CASES) NEW_ACTIVE_CASES,
   SUM(NEW_RECOVERED) NEW_RECOVERED, 
  SUM (NEW_DEATHS) NEW_DEATHS,
   SUM(NEW_CASES_PER_MILLION) NEW_CASES_PER_MILLION,
    SUM(NEW_DEATHS_PER_MILLION) NEW_DEATHS_PER_MILLION
    FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_DEEPANSHU_GOYAL
     GROUP BY 1,2 ORDER BY 1 DESC 

)

select *
from source_data