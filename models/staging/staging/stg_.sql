
                with source as (
                    select * from {{ source('', '') }}
                ),
                
                renamed as (
                    select
                        *
                    from source
                )
                
                select * from renamed
            