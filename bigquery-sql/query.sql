-- Create or replace table `psychic-force-362917.final_project.fraud_dataset_final`
-- as
-- select * from `psychic-force-362917.final_project.external_table`
-- order by datetime ASC;

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