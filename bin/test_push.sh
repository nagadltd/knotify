curl -X POST -H 'Content-Type:application/json' -d '{
    "id": "53815",
    "idType": "USER_ID",
    "aspId": "953365000000000",
    "notificationType": "REPLENISH",
    "deliveryType": "DIRECT",
    "payload": "ABCD"
}' http://localhost:15519/api/km/notifications/push
