# Anime API

#### _Jin Camou and Nicky Santamaria_

## Description

An api that will return a list of characters for different cartoons. It will let you search for character by name.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Other Sources

* [Serializer](https://blog.engineyard.com/2015/active-model-serializers)
* [kaminari](https://github.com/kaminari/kaminari)
* [RackThrottle](https://github.com/dryruby/rack-throttle)

## Installation

* `$ git clone https://github.com/nrsantamaria/anime-api`
* `$ cd anime-api`

## PostgreSQL Integration
* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database
* `$ rake db:seed`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Add a cartoon to the database|Post, name => 'Simpsons'|name: Simpsons, id: 1|
|Add a character to the database|Visit specific cartoon path, Post, name => 'Lisa Simpson', powers: '{Saxophone}', cartoon_id: 1|name: 'Lisa Simpson', powers: ['Saxophone'], cartoon: { name: 'Simpsons'}|
|Update a cartoon.|Put, name => 'The Simpsons'|name: 'The Simpsons', id:1|
|Update a character|Visit specific cartoon path, Put, name => 'Miss Lisa Simpson'|name: 'Miss Lisa Simpson', powers: ['Saxophone'], cartoon: { name: 'Simpsons'}|
|Delete a character.|Visit specific character path, Delete|message: "Burned!"|
|Delete a cartoon.|Visit a specific cartoon path, Delete|message: "Zoinks!"|
|See a list of all cartoons|Visit '/cartoons' path|name: Simpsons|
|See a list of all characters for a particular cartoon|Visit '/cartoons/1'|characters: name: Miss Lisa Simpson|
|Search for a character by name|Visit '/cartoons/1/characters/by_name?name="Miss%Lisa%Simpson"'|characters: name: Miss Lisa Simpson, powers: '{Saxophone}'|

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 Jin Camou and Nicky Santamaria
```
