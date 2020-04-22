# grandstack-docker

Docker image for working with GRANDstack

## Environment Variables

Specify the following environment variables when running your container:

* `NEO4J_BOLT_URI`
* `NEO4J_USER`
* `NEO4J_PASSWORD`

Example:

```
docker run --env NEO4J_BOLT_URI=bolt://54.237.28.79:32769 --env NEO4J_USER=neo4j --env NEO4J_PASSWORD=exchange-conjunction-pin --publish 8000:3003 --detach lyonwj/grandstack-infer-exp
```