# Creating USD10 budget with alerts
aws budgets create-budget \
    --account-id $AWS_ACCOUNT_ID \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/subscribers.json

# Creating SNS 
aws sns create-topic --name budget-alarm
aws sns subscribe --topic-arn arn:aws:sns:ca-central-1:904233096914:budget-alarm --protocol email --notification-endpoint gaurav22.tank@gmail.com