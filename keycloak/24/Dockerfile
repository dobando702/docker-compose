FROM keycloak-keycloak:latest
#COPY themes/zabud /opt/keycloak/themes/zabud
#COPY realm-export.json /tmp/realm-export.json
#ENV KEYCLOAK_IMPORT=/tmp/realm-export.json
ENV JAVA_OPTS_APPEND="-Dkeycloak.profile.feature.upload_scripts=enabled"
#RUN sed -i -E "s/(<staticMaxAge>)2592000(<\/staticMaxAge>)/\1\-1\2/" /opt/jboss/keycloak/standalone/configuration/standalone.xml
#RUN sed -i -E "s/(<cacheThemes>)true(<\/cacheThemes>)/\1false\2/" /opt/jboss/keycloak/standalone/configuration/standalone.xml3
#RUN sed -i -E "s/(<cacheTemplates>)true(<\/cacheTemplates>)/\1false\2/" /opt/jboss/keycloak/standalone/configuration/standalone.xml