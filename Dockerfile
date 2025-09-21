#Use official Tomcat base image
FROM tomcat:10.1.44-jdk17

#Maintainer information (optional)
LABEL maintainer="sash2017@yahoo.co.in"

#Remove default Tomcat apps (optional, keeps container clean)
#RUN rm -rf /usr/local/tomcat/webapps/*

#Copy your WAR file into Tomcat webapps directory
#COPY ./yourapp.war /usr/local/tomcat/webapps/ROOT.war
COPY ./target/*.war /usr/local/tomcat/webapps/viprofile.war

#Expose Tomcat port
EXPOSE 9090

#Start Tomcat server
CMD ["catalina.sh", "run"]
