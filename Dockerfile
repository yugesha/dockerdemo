# Base image and maintainer details
FROM java:8-jre
MAINTAINER Enterprise AppsMaker masterCraft.support@tcs.com
USER root
# Create necessary directories and set permissions
RUN mkdir  /EnterpriseAppsMaker && \
 mkdir  /EnterpriseAppsMaker/logs && \
 chmod 777 /EnterpriseAppsMaker/logs && \
COPY Deployment/InitW1/EnrollmentComponent/appserver/EnrollmentComponent-1.0.jar /EnterpriseAppsMaker
# Expose the http, database and administration ports
EXPOSE 8761 9990
# Specify container startup command
CMD java -jar /EnterpriseAppsMaker\EnrollmentComponent-1.0.jar