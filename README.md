#  build and server start
```
$ docker compose build
$ docker compose up
```

 
 # Create DB and Migrate
 ```
 $ docker compose exec web rails db:create
 $ docker compose exec web rails db:migrate
 ```
 
 # Graphiql
 ### URL
 http://localhost:3000/graphiql
 ![image](https://github.com/kwshd1122/exam_graphql/assets/13035016/a10e910b-751e-467e-a541-a7ddb3cf5a9a)
 
 ### Create User By GraphQL Mutation
 ```
 mutation {
  createUser(input: { age: 10, name: "test_name" }) {
    user {
      id
      age
      name
    }
    message
  }
}
 ```
 
### Create Tweet By GraphQL Mutation
```
mutation {
  createTweet(input: { article: "Test Tweet", userId: 1}) {
    tweet {
      id
      article
      userId
    }
  }
}
```

### excute User Query
```
query {
  findUser(id: 1) {
    age
    name
    tweets {
      article
    }
  }
}

↓↓↓↓↓　Response ↓↓↓↓↓↓↓
{
  "data": {
    "findUser": {
      "age": 10,
      "name": "ha",
      "tweets": [
        {
          "article": "Test Tweet"
        }
      ]
    }
  }
}
```
 
