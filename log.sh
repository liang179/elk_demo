curl -X GET "http://localhost:9200/logstash-test/_search" -u elastic:khDFR22tKhcKVa -H 'Content-Type: application/json' -d'
{
    "from": 0,
    "size": 100,
    "query": {
        "match": {
            "log.file.path": {
                "query": "/logs/de97013df5fb/spring_2024-07-22T02:20:26.989.log",
                "operator": "and"
            }
        }
    },
    "fields": [
        "message"
    ],
    "_source": false,
    "sort": [
        {
            "_timestamp": {
                "order": "asc"
            },
            "log.offset": {
                "order": "asc"
            }
        }
    ]
}
' | jq -r .hits.hits[].fields.message[0]