{{
    config(
        materialized='view'
    )
}}

with fraud_data_filtered as (
    select
        *
    from
        {{ ref('src_fraud_data') }}
)

select
    datetime,
    senderID,
    amount,
    type,
    oldbalanceSend,
    newbalanceSend,
    ReceiverID,
    oldbalancereceive,
    newbalancereceive,
    date,
    isFraud
from
    fraud_data_filtered
where
    amount > 0