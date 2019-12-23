# Introduction to Databases - lab environment setup (Neo4J)

The repository is created for lab sessions during the Introduction to Databases course at the University of Ljubljana, Faculty for computer and information science.

To start the server, use the following command:

```
docker run -p 7474:7474 -p 7687:7687 -d --name opb-neo4j neo4j:3.5.14
```

When the server is running, navigate to [http://localhost:7474](http://localhost:7474) to access Neo4J server user interface (on Windows machines use docker machine's IP instead of localhost). The default login credentials are neo4j/neo4j.

When you finish working with Neo4J, run `docker rm --force opb-neo4j`.