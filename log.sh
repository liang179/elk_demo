LOG_FILE='/logs/test.log'
QUERY_DATA='
{
    "from": 0,
    "size": 100,
    "query": {
        "match": {
            "log.file.path": {
                "query": "'"$LOG_FILE"'",
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
'

curl -s -X GET "http://localhost:9200/logstash-test/_search" -u elastic:khDFR22tKhcKVa -H 'Content-Type: application/json' -d "$QUERY_DATA" | jq -r .hits.hits[].fields.message[0]