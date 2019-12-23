# Introduction to Databases - lab environment setup (mongodb)

The repository is created for lab sessions during the Introduction to Databases course at the University of Ljubljana, Faculty for computer and information science.

## 

To start the server, use the following command:

```
docker run --name mongo-opb -d mongo:4-bionic
```

The mongo container should be now up and running. To connect to the mongo database, we will use mongo client within the running container:

```
docker exec -it mongo-opb mongo
```
The command should output something like this and wait for user inputs:

```
MongoDB shell version v4.2.2
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("b334863b-211e-444b-a48e-22094e224f2f") }
MongoDB server version: 4.2.2
Welcome to the MongoDB shell.
For interactive help, type "help".
For more comprehensive documentation, see
	http://docs.mongodb.org/
Questions? Try the support group
	http://groups.google.com/group/mongodb-user
Server has startup warnings:
2019-12-23T21:30:40.506+0000 I  STORAGE  [initandlisten]
2019-12-23T21:30:40.506+0000 I  STORAGE  [initandlisten] ** WARNING: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine
2019-12-23T21:30:40.506+0000 I  STORAGE  [initandlisten] **          See http://dochub.mongodb.org/core/prodnotes-filesystem
2019-12-23T21:30:41.151+0000 I  CONTROL  [initandlisten]
2019-12-23T21:30:41.151+0000 I  CONTROL  [initandlisten] ** WARNING: Access control is not enabled for the database.
2019-12-23T21:30:41.151+0000 I  CONTROL  [initandlisten] **          Read and write access to data and configuration is unrestricted.
2019-12-23T21:30:41.151+0000 I  CONTROL  [initandlisten]
---
Enable MongoDB's free cloud-based monitoring service, which will then receive and display
metrics about your deployment (disk utilization, CPU, operation statistics, etc).

The monitoring data will be available on a MongoDB website with a unique URL accessible to you
and anyone you share the URL with. MongoDB may use this information to make product
improvements and to suggest MongoDB products and deployment options to you.

To enable free monitoring, run the following command: db.enableFreeMonitoring()
To permanently disable this reminder, run the following command: db.disableFreeMonitoring()
---

>
```


To exit, type `exit`. 

When you finish working with mongo, run `docker rm --force mongo-opb`.