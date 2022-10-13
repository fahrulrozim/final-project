-- Create a new table fraud_dataset_final from external table:
Create or replace table `psychic-force-362917.final_project.fraud_dataset_final`
as
select * from `psychic-force-362917.final_project.external_table`
order by datetime ASC;

create or replace table `psychic-force-362917.final_project.fraud_dataset_final` as
  select step, type,
  amount,
  nameOrig as senderID,
  oldbalanceOrg as oldbalanceSend,
  newbalanceOrig as newbalanceSend,
  abs(newbalanceOrig-oldbalanceOrg) as difsender,
  nameDest as ReceiverID,
  oldbalanceDest as oldbalancereceive,
  newbalanceDest as newbalancereceive,
  abs(newbalanceDest-oldbalanceDest) as difreceiver,
  isFraud,
  isFlaggedFraud,
  datetime,
  extract(date from datetime) as date,
  extract(time from datetime) as time
  from `psychic-force-362917.final_project.external_table`
  order by datetime;

  -- Create sender_table:
CREATE OR REPLACE TABLE `psychic-force-362917.final_project.sender_table`
AS
SELECT senderID, count(senderID) as count_trx,
  ARRAY_AGG(STRUCT(datetime, type, amount, oldbalanceSend, newbalanceSend,(newbalanceSend-oldbalanceSend) as difsender, isFraud) ORDER BY datetime) AS trx_table
  from `psychic-force-362917.final_project.fraud_dataset_final`
  GROUP BY senderID
  order by count_trx desc;

-- Create receiver table:
CREATE OR REPLACE TABLE `psychic-force-362917.final_project.receiver_table`
AS
SELECT ReceiverID, count(ReceiverID) as count_trx,
  ARRAY_AGG(STRUCT(datetime, type, amount, oldbalancereceive, newbalancereceive,(newbalancereceive-oldbalancereceive) as difreceiver, isFraud) ORDER BY datetime) AS trx_table
  from `psychic-force-362917.final_project.fraud_dataset_final`
  GROUP BY ReceiverID
  order by count_trx desc;