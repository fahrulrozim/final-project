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
    senderID,
    oldbalanceSend,
    newbalanceSend,
    ReceiverID,
    oldbalancereceive,
    newbalancereceive,
    isFraud
from
    {{ ref('src_fraud_data') }}