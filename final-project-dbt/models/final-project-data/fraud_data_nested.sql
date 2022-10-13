{{
    config(
        materialized='table'
    )
}}

with fraud_nested as (
    select
        datetime,
        array_agg(struct(
            step,
            type,
            type_nested)) as timestamp_nested
    from (
        select
            datetime,
            step,
            type,
            array_agg(struct(senderID,
                oldbalanceSend,
                newbalanceSend,
                difsender,
                ReceiverID,
                oldbalancereceive,
                newbalancereceive,
                difreceiver,
                isFraud,
                isFlaggedFraud)) as type_nested
        from
            {{ ref('src_fraud_data') }}
        group by
            type,
            step,
            datetime)
    group by
        datetime
    order by
        datetime)

select * from fraud_nested