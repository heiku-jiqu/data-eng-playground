FROM apache/spark:v3.3.0

USER root

RUN mkdir -p /opt/spark/logs && chmod a+wr /opt/spark/logs

USER 185

ENV SPARK_NO_DAEMONIZE=true

CMD ["/opt/spark/sbin/start-master.sh"]