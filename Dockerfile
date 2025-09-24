FROM quay.io/keycloak/keycloak:24.0.5

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

COPY keycloak /opt/keycloak/data/import

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["/opt/keycloak/bin/kc.sh start-dev --http-enabled=true --http-host=0.0.0.0 --http-port=${PORT:-8080} --import-realm"]
