# ffbot
ffbot will be a bot that sits on a groupme chat and outputs relevant fantasy football information.

## Application Architecure
ffbot will be a serverless function, built on AWS LAMBDA and also using AWS API Gateway.

### Setting up ~/.bashrc 
It is required that you set your groupme API bot token and coinmarketcap api token in your .bashrc file

```
nano ~/.bashrc
```

```
export TF_VAR_groupme_token = [BOT TOKEN HERE]
```