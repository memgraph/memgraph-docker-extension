![Docker Pulls](https://img.shields.io/docker/pulls/memgraph/memgraph-docker-extension)
![stars](https://img.shields.io/github/stars/memgraph/memgraph-docker-extension)
![forks](https://img.shields.io/github/forks/memgraph/memgraph-docker-extension)
![issues](https://img.shields.io/github/issues/memgraph/memgraph-docker-extension)
![Twitter](https://img.shields.io/twitter/follow/memgraphdb?style=social)

# Memgraph Docker Extension

Memgraph is a streaming graph application platform that helps you wrangle your streaming data, build sophisticated models you can query in real-time, and develop applications you never thought possible within a couple of days, not months. With the Memgraph Docker Extension, now you can set up the Memgraph platform in seconds.

<img width="1492" alt="image" src="https://user-images.githubusercontent.com/313480/208896008-6d0d40ce-65e3-4074-86bc-7926ceb03da0.png">

## Getting Started

**Notice:** The official Memgraph Docker Extension build can be found on [Docker Hub](https://hub.docker.com/extensions/memgraph/memgraph-docker-extension).

To build the extension yourself, follow these instructions.

### Prerequisites

- Docker Desktop version 4.10 or higher

## Building the Extension

Whether you're using `make` or manually building with Docker commands, please refer to the `Makefile` for the current version (`TAG`) and image name (`IMAGE`) to use.

### Using Make (Recommended for Linux/MacOS)

#### Clone the Repository

```bash
git clone https://github.com/memgraph/memgraph-docker-extension
cd memgraph-docker-extension
```

#### Build and Install the Extension

```bash
make build-extension
make install-extension
```

### Without Make (Alternative for Windows 11 and Others)

For those who do not have `make` installed or prefer not to use it, you can build and install the extension manually using Docker commands. Be sure to check the `Makefile` for the `IMAGE` name and `TAG` value to use for building the extension.

#### Build the Docker Extension

Replace `<IMAGE>` and `<TAG>` with the values found in the `Makefile`. For example, if the `Makefile` specifies `IMAGE=memgraph/memgraph-docker-extension` and `TAG=2.14.1`, use those values in the following command:

```bash
docker build --tag=<IMAGE>:<TAG> .
```

#### Install the Docker Extension

Using the same `<IMAGE>` and `<TAG>` values from the `Makefile`, install the Docker extension:

```bash
docker extension install <IMAGE>:<TAG>
```

## Accessing the Extension

After installation, open the Docker Dashboard, navigate to Extensions, and select Memgraph to start exploring your data with the extension.

<img width="1501" alt="image" src="https://user-images.githubusercontent.com/313480/208895248-d8aee07e-8bb5-4a04-9378-327a03114fa8.png">

For any issues or contributions, please refer to the [issues](https://github.com/memgraph/memgraph-docker-extension/issues) section on GitHub or submit a pull request.