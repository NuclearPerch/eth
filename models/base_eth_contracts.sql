with source as (
        select * from {{ source('eth', 'contracts') }}
  ),
  renamed as (
      select
          {{ adapter.quote("ADDRESS") }},
        {{ adapter.quote("BLOCK_HASH") }},
        {{ adapter.quote("BLOCK_NUMBER") }},
        {{ adapter.quote("BLOCK_TIMESTAMP") }},
        {{ adapter.quote("BYTECODE") }},
        {{ adapter.quote("DATE") }},
        {{ adapter.quote("LAST_MODIFIED") }}

      from source
  )
  select * from renamed
    