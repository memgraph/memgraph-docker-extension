FROM alpine
LABEL org.opencontainers.image.title="Memgraph" \
    org.opencontainers.image.description="Memgraph Extension for Docker Desktop" \
    org.opencontainers.image.vendor="Memgraph" \
    com.docker.desktop.extension.api.version="0.3.0" \
    com.docker.extension.screenshots="[ \
    {\"url\": \"https://raw.githubusercontent.com/memgraph/memgraph-docker-extension/main/memgraph-extension-screenshot-1.png\", \"alt\": \"Memgraph Platform\"}, \
    {\"url\": \"https://raw.githubusercontent.com/memgraph/memgraph-docker-extension/main/memgraph-extension-screenshot-2.png\", \"alt\": \"Memgraph Platform\"}, \
    {\"url\": \"https://raw.githubusercontent.com/memgraph/memgraph-docker-extension/main/memgraph-extension-screenshot-3.png\", \"alt\": \"Memgraph Platform\"} \
    ]" \
    com.docker.extension.categories="database" \
    com.docker.desktop.extension.icon="https://raw.githubusercontent.com/memgraph/memgraph-docker-extension/main/memgraph.svg" \
    com.docker.extension.detailed-description="<p><b>Memgraph</b> is an <b>open-source graph database</b> built for streaming and compatible with Neo4j.</p><p>Memgraph directly connects to your streaming infrastructure, so you and your team don’t spend countless hours building and maintaining complex data pipelines. You can ingest data from sources like <b>Kafka</b>, SQL, or plain CSV files. Memgraph provides a standard interface to query your data with <b>Cypher</b>, a widely-used and declarative query language that is easy to write, understand and optimize for performance. This is achieved by using the <b>property graph data model</b>, which stores data in terms of objects, their attributes, and the relationships that connect them. This is a natural and effective way to model many real-world problems without relying on complex SQL schemas.</p><p>Memgraph is implemented in C/C++ and leverages an <b>in-memory</b> first architecture to ensure that you’re getting the best possible performance consistently and without surprises. It’s also ACID-compliant and highly available.</p><p>With Memgraph Docker Extension, you can now set up the Memgraph Platform in no seconds.</p>" \
    com.docker.extension.publisher-url="https://memgraph.com/" \
    com.docker.extension.additional-urls='[{"title":"Memgraph GitHub repository", "url":"https://github.com/memgraph/memgraph/"}, {"title":"Discord community","url":"https://discord.gg/memgraph/"}, {"title":"Memgraph Extension GitHub repository","url":"https://github.com/memgraph/memgraph-docker-extension/"}]' \
    com.docker.extension.changelog="Updated Memgraph Platform to version 2.16.1" 

COPY docker-compose.yaml .
COPY metadata.json .
COPY docker.svg .
COPY memgraph.svg .
COPY ui ui
