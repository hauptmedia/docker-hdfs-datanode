FROM		hauptmedia/hadoop-base

ENV     	HDFS_DATANODE_ROOT_DIR=/var/hdfs/datanode

ADD		conf/core-site.xml	${HADOOP_INSTALL_DIR}/etc/hadoop/core-site.xml
ADD		conf/hdfs-site.xml	${HADOOP_INSTALL_DIR}/etc/hadoop/hdfs-site.xml

ADD		docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

VOLUME		["${HDFS_DATENODE_ROOT_DIR}"]


# TCP	1004	dfs.datanode.address
# TCP	1006	dfs.datanode.http.address
# TCP	50010	dfs.datanode.address (DataNode HTTP server port)
# 50075 (TCP): dfs.datanode.http.address
# 50020 (TCP): dfs.datanode.ipc.address


#EXPOSE 8020 50070 50470

EXPOSE 8081 7077

ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]

CMD ["bin/hdfs", "datanode"]

