# pyspark-samples
This will store multiple pyspark samples 


## Docker compose for jupyter pyspark notebook

Run this command to get cluster up
>docker-compose up -d
   
Run this to check existing docker compose
>docker-compose ps

Run this  to get valid token.
>docker-compose logs

You can see in logs
 
```pyspark-notebook_1  |     
pyspark-notebook_1  |     To access the notebook, open this file in a browser:
pyspark-notebook_1  |         file:///home/jovyan/.local/share/jupyter/runtime/nbserver-7-open.html
pyspark-notebook_1  |     Or copy and paste one of these URLs:
pyspark-notebook_1  |         http://41e98e09f060:8888/?token=8ae556a272e9ce686118fe6514aef3c4e9bab24564e85f63
pyspark-notebook_1  |      or http://127.0.0.1:8888/?token=8ae556a272e9ce686118fe6514aef3c4e9bab24564e85f63 
```

Run this command to bring it down.
>docker-compose down
