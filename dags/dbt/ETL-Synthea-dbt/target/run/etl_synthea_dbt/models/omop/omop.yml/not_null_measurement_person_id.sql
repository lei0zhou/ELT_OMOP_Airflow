select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select person_id
from "dbt"."main"."measurement"
where person_id is null



      
    ) dbt_internal_test