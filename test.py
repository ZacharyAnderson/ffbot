from ffbot import lambda_handler
import requests
import configparser
import os

def main():

    data = {
  "attachments": [],
  "avatar_url": "https://i.groupme.com/123456789",
  "created_at": 1302623328,
  "group_id": "1234567890",
  "id": "1234567890",
  "name": "John",
  "sender_id": "12345",
  "sender_type": "user",
  "source_guid": "GUID",
  "system": 'false',
  "text": "Hello world ☃☃",
  "user_id": "123456789",
  "local":True
}
    lambda_handler(data,{})


if __name__ == "__main__":
    main()