"routingRequest" : {
    "id": "routingRequest",
    "type": "any",
    "required": false,
    "uniqueItems": false,
    "properties": {
        "entity-type": {
            "uniqueItems": false,
            "type": "string",
            "required": true
        },
        "routeModelId": {
            "uniqueItems": false,
            "type": "string",
            "required": false
        },
        "documentIds": {
            "type": "array",
            "items" : {
              "type":"string"
            },
            "required": false
        },
		"worflowVariables": {
            "uniqueItems": true,
            "type": "container",
            "items":{
              "$ref":"Property"
            }
        }

    }

}