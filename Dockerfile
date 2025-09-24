FROM quay.io/keycloak/keycloak:24.0.5

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

COPY keycloak /opt/keycloak/data/import

CMD ["/bin/sh", "-c", "/opt/keycloak/bin/kc.sh start-dev --http-port=${PORT:-8080} --import-realm"]
