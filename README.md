Runs a hdfs datanode in a docker container

## Exposed ports

* TCP   50010   dfs.datanode.address            port for data transfer
* TCP   50020   dfs.datanode.ipc.address        ipc server
* TCP   50075   dfs.datanode.http.address       http server
* TCP   50475   dfs.datanode.https.address      https server

## Example

```bash
docker run -d --link namenode:namenode hauptmedia/hdfs-datanode
```

