select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select person_id as from_field
    from "dbt"."main"."condition_occurrence"
    where person_id is not null
),

parent as (
    select person_id as to_field
    from "dbt"."main"."person"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test