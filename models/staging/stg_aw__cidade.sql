with
    source as (
        select
            cast(addressid as int) as id_cidade
            , cast (city as string) as cidade_nome
        from {{ source('awel', 'person_address') }}
    )
select *
from source