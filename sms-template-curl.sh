#!/bin/bash

curl -L -X POST 'localhost:15519/api/message-templates/aggregated' \
-H 'Content-Type: application/json' \
-d'{
    "templateCode": "01010800",
    "templateName": "SET_PIN_GPB_SUCCESS",
    "aspId": "100012345612345",
    "notificationType": "SET_PIN_GPB_SUCCESS",
    "channel": "SMS",
    "status": "ENABLED",
    "priority" : 0,
    "localizedTemplateList": [
        {
            "subject": "SET_PIN_GPB_SUCCESS_EN",
            "templateBody": "Your PIN setup has been successful and Virtual Card number is {{virtual.token}}. Do not share your PIN with others. For more information, please call 16167.",
            "locale": "EN"
        }
    ]
}'

curl -L -X POST 'localhost:15519/api/message-templates/aggregated' \
-H 'Content-Type: application/json' \
-d'{
    "templateCode": "01010900",
    "templateName": "UPDATE_PROFILE_GPB_SUCCESS",
    "aspId": "100012345612345",
    "notificationType": "UPDATE_PROFILE_GPB_SUCCESS",
    "channel": "SMS",
    "status": "ENABLED",
    "priority" : 0,
    "localizedTemplateList": [
        {
            "subject": "UPDATE_PROFILE_GPB_SUCCESS_EN",
            "templateBody": "Dear Customer, Your account has been successfully upgraded to Full Profile.",
            "locale": "EN"
        }
    ]
}'


curl -L -X POST 'localhost:15519/api/message-templates/aggregated' \
-H 'Content-Type: application/json' \
-d'{
    "templateCode": "01010902",
    "templateName": "UPDATE_PROFILE_GPB_FAIL",
    "aspId": "100012345612345",
    "notificationType": "UPDATE_PROFILE_GPB_FAIL",
    "channel": "SMS",
    "status": "ENABLED",
    "priority" : 0,
    "localizedTemplateList": [
        {
            "subject": "UPDATE_PROFILE_GPB_FAIL_EN",
            "templateBody": "Automatic verification failed. NID number provided by GP is already being used by another Nagad Account. Please visit Nagad Uddokta Point or download Nagad App to upgrade your profile.",
            "locale": "EN"
        }
    ]
}'