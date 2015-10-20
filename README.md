# Aws::Es::Transport

Extracted and modified AWS signing V4 methods from https://github.com/awslabs/logstash-output-amazon_es into Elasticsearch compatible transport

```
Elasticsearch::Client.new(
  transport_class: Elasticsearch::Transport::Transport::HTTP::AWS
)
```
