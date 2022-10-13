{{
    config(
        materialized="view"
    )
}}
with fraud_dataset_src as (
    select
        *
    from
        {{ source('final_project', 'fraud_dataset_final') }}
)
select
    step,
    type,
    amount,
    senderID,
    oldbalanceSend,
    newbalanceSend,
    difsender,
    ReceiverID,
    oldbalancereceive,
    newbalancereceive,
    difreceiver,
    isFraud,
    isFlaggedFraud,
    datetime,
    date,
    time
from fraud_dataset_src
order by datetime ASC