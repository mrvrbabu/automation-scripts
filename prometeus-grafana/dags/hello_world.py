from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime


def hello_world():
    print("👋 Hello World from Airflow!")


with DAG(
    dag_id="hello_world",
    description="Minimal Hello World DAG",
    start_date=datetime(2024, 1, 1),
    schedule=None,          # manual trigger
    catchup=False,
    tags=["example", "hello"],
) as dag:

    hello_task = PythonOperator(
        task_id="hello_world_task",
        python_callable=hello_world,
    )

    hello_task
