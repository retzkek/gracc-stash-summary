# gracc-stash-summary

Logstash-based service to listen for GRACC summary records on a RabbitMQ exchange and
index them into Elasticsearch.

# Configuration
All deployment-specific configuration is done with environment variables. Defaults
are included in the logstash config. Settings can be provided by passing 
`--env-file <filename>`  or `-e <var>=<value>` to `docker run`.

| Variable | Default | Description |
|----------|---------|-------------|
| `AMQP_HOST` | `localhost` | RabbitMQ hostname |
| `AMQP_VHOST` | `/` | RabbitMQ virtual host |
| `AMQP_USER` | `guest` | RabbitMQ user name |
| `AMQP_PASSWORD` | `guest` | RabbitMQ user password |
| `ELASTICSEARCH_HOST` | `localhost` | Elasticsearch hostname |
| `GRACC_INSTANCE` |  | GRACC deployment instance name. This is used in the RabbitMQ queue name and as the routing key. |
| `GRACC_STREAM` |  | GRACC stream name. The RabbitMQ exchange is expected to be `gracc.${GRACC_STREAM}.summary`, and the Elasticsearch index is named similarly. |

