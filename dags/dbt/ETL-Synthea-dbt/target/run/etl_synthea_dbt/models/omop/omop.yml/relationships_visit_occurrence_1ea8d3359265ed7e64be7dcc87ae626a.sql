select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select preceding_visit_occurrence_id as from_field
    from "dbt"."main"."visit_occurrence"
    where preceding_visit_occurrence_id is not null
),

parent as (
    select visit_occurrence_id as to_field
    from "dbt"."main"."visit_occurrence"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test