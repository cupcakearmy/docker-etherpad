# Etherpad Docker

Etherpad docker image with docker-compose support.

## Quickstart 💥

```bash
docker-compose up -d
```

## Setup 🏗

```bash
git clone https://github.com/CupCakeArmy/docker-etherpad
cd docker-etherpad

# Modify settings
vim settings.json

# Run
docker-compose up -d
```

### (Default) Persist the DB 💽

By default the DB is persisted into `dirty.db`.
To start with a clean state you need to delete the `dirty.db` file.
Either run `rm dirty.db; touch dirty.db` or `cat /dev/null > dirty.db`.
docker-compose requires that the file exists, otherwise it will mount it as a folder.
