# Moonrat V2
Moonrat V2 is a chat bot that communicates on the Slack messaging app.
Moonrat will listen for cryptocurrency commands and output the correct information.

## Application Architecure
Moonrat will be a serverless function, built on AWS LAMBDA and also using AWS API Gateway.

### Setting up ~/.bashrc 
It is required that you set your Slack API bot token and coinmarketcap api token in your .bashrc file

```
nano ~/.bashrc
```

```
export TF_VAR_bot_token = [BOT TOKEN HERE]
export TF_VAR_coinmarketcap_token = [COINMARKETCAP TOKEN HERE]
```