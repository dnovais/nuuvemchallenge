# <img src="https://assets.nuuvem.com/assets/fe/images/nuuvem_logo-ab61ec645af3a6db7df0140d4792f31a.svg" alt="qcx" width="24" /> nuuvem-challenge

This is a project for the challenge proposed by the company Nuuvem.

The project is about importing a company's sales from a text file (separated by tabs - [file](example_input.tab)).

[About the challenge](about.md)

## Running the project

The project is prepared for the use of the docker and if you prefer or need it it is ready to run without using the docker too.

### Using Docker

1. Install gems and dependencies
	```
	docker-compose run --rm app bundle exec bundle installg
	```
	```
	docker-compose run --rm app bundle exec yarn install
	```

2. Create the database
	```
	docker-compose run --rm app bundle exec rails db:create
	```

3. Run the migration
	```
	docker-compose run --rm app bundle exec rails db:migrate
	```

4. Run the tests
	```
	docker-compose run --rm app bundle exec rspec
	```

5. Run the application
	```
	docker-compose up -d
	```

### Without using the <s> Docker </s>

 --> **Prerequisites**
 - Ruby - 2.7.2
 - Rails - 6.0.3
 - PostgreSQL

 -->   **Step by Step**
1. Create the database
	```
	rails db:create
	```
2. Run the migrations
	```
	rails db:migrate
	```
3. Install gems and dependencies
	```
	bundle install
	```
	```
	yarn install
	```
4. Run the tests
	```
	rspec
	```
5. Run the application
	```
	rails server
	```

### To access the project in the browser

```
localhost:3000
```

## Documentation
For this project, a separate guide was provided with sales data for merchants and purchasers. Our goal was to model the project so that it was possible to upload the file and consume this data.

### Scenario and hypotheses

Interpreting the sample file provided, I was able to analyze and gather the following information:

A purchaser can make multiple purchases of an item at a given merchant.

![alt file example data](https://res.cloudinary.com/dp5pbmxdl/image/upload/v1608175017/Screen_Shot_2020-12-16_at_18.06.12_jsjafs.png)

### Modeling the database

![alt Modeling the database](https://res.cloudinary.com/dp5pbmxdl/image/upload/v1608175037/der_zpwz80.png)

## Next steps and improvements

- Improve the user experience with a better layout;
- Create and use helpers to facilitate and improve our views;
- Add Query Objects is standard with the aim of eliminating the complexity of queries in our models and leaving them with a leaner and more readable code. In this way, we were able to isolate a specific query that implements only one business logic rule. And all this without losing the power to extend, inherit queries and use nested scopes.

## Contact
To answer any questions or to contact us:
- Email: contato@diegonovais.com.br