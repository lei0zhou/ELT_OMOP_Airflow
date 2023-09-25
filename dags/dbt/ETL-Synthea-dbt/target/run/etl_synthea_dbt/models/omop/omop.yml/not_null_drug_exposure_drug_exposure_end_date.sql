select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select drug_exposure_end_date
from "dbt"."main"."drug_exposure"
where drug_exposure_end_date is null



      
    ) dbt_internal_test