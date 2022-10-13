{{
    config(
        materialized='table',
        partition_by={
            'field': 'date',
            'data_type': 'date',
            'granularity': 'day'
        },
        cluster_by = 'type'
    )
}}

select
    date,
    type,
    isFraud,
    isFlaggedFraud
from
    {{ ref('src_fraud_data') }}