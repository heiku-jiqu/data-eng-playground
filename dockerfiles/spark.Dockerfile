FROM apache/spark:3.3.1

# Create logs directory for spark
USER root
RUN mkdir /opt/spark/logs && chmod a+wr /opt/spark/logs

RUN mkdir /opt/spark/work && chmod a+wr /opt/spark/work

# switch back to user 185 from base image
USER 185

# turn off spark running in background so container wont exit
ENV SPARK_NO_DAEMONIZE=true

# master webui port
EXPOSE 8080 
# master service port
EXPOSE 7077

# start-master.sh is passed into entrypoint.sh
# to run the spark process using tini
ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["/opt/spark/sbin/start-master.sh"]
