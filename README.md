# Phase 3 Project Guidelines

## Phase 3 repo

- [**Phase3 frontend repo**][frontend link]

[frontend link]: https://github.com/Abzazuet/Phase-3-Project-Frontend

## Introduction

- With this app you can add, update, read and delete the desserts. The frontend listed above sends the requests and our ruby server sends back the dessert or performs the CRUD operation sent in the client request

## Getting Started

### Backend Setup

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Fetch Example used to get desserts

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/desserts")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

### Tutotial to deploy ruby in heroku 
- https://medium.com/@isphinxs/deploying-a-sinatra-app-to-heroku-7944b024f77c
