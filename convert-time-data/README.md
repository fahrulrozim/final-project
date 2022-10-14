# final-project

This is a repository for final project of Data Fellowship 7: Data Engineer Fast Track. The theme for this project is `Online Payment Fraud Detection`. You can access the [Slides](https://docs.google.com/presentation/d/1t77RXxFUMCF_7SOF5wIrsDxPeDwM-9DmXQvkvBKwowU/edit?usp=sharing) from here. Flowchart and steps to produce is described there (please feel free to look if you want to know the process).

Link to [Google Data Studio](bit.ly/dashboardfraud).

How to run (batch processing):
1. Set up DAG pipeline in airflow. You can navigate to directory `dag-airflow/` and follow the instructions there.
2. After successfully running DAG airflow, you can navigate to directory `bigquery-sql/` and apply the query there based on your choice.
3. After that, you can set up dbt by following the code from directory `final-project-dbt`.
4. Dbt will automatically create new table based on your model in BigQuery. Next, use the data to visualize in Google Data Studio.

How to run (stream processing):
1. Run stream in directory `pubsub-stream` and follow the instructions there.
2. After successfully stream, you can follow the same step 2 with `batch processing`. Run `bigquery-sql`.
3. After that, you can set up dbt by following the code from directory `final-project-dbt`.
4. Dbt will automatically create new table based on your model in BigQuery. Next, use the data to visualize in Google Data Studio.

Note: Google drive needs a special case in downloading data >20MB. You can access the link [here](https://gist.github.com/tanaikech/f0f2d122e05bf5f971611258c22c110f).
