# Airflow DAG Pipeline

This is a repository for final project of Data Fellowship 7: Data Engineer Fast Track as a part of running `Airflow DAG Pipeline`. The theme for this project is `Online Payment Fraud Detection`. You can access the [Slides](https://docs.google.com/presentation/d/1t77RXxFUMCF_7SOF5wIrsDxPeDwM-9DmXQvkvBKwowU/edit?usp=sharing) from here. Flowchart and steps to produce is described there (please feel free to look if you want to know the process).

Link to [Google Data Studio](bit.ly/dashboardfraud).

Pre-requisite:
1. Docker
2. Python 3.7 or later
3. Airflow

Note: You have to edit `.env` and `storage bucket name` based on your own `Google Cloud Platform` account.

How to run (batch processing):
1. Run file `docker-compose.yml` with command `docker-compose up`.
2. Navigate to your browser and access `localhost:8080`.
3. Login with `username` and `password` = `airflow`.
4. Run DAG pipeline and it will run the DAG based on your code.

Note: Google drive needs a special case in downloading data >20MB. You can access the link [here](https://gist.github.com/tanaikech/f0f2d122e05bf5f971611258c22c110f).
