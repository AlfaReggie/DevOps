#!/bin/bash

TG_BOT_TOKEN="6132475056:AAGA8CrSXYBDiczmOOWqmEut-FZbmupN-E8"
TG_USER_ID="344842478"
TIME=10

URL="https://api.telegram.org/bot$TG_BOT_TOKEN/sendMessage"
TEXT="$CI_JOB_NAME %0AStatus: $CI_JOB_STATUS$1%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$TG_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
