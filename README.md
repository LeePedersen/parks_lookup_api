# Parks API

#### _Lee Pedersen_

## Description

_This is an api to keep track of national parks_

## Versions:
* _Rails 5.2.4.1_
* _Ruby 2.5.1_

## Setup
* _Make sure you have ruby, rails, and postgres installed_
* _Clone to machine_
* _Bundle_
* _Recreate database by running these commands from the root directory of the project: `createdb mario_products_development`, `psql mario_products_development < mario_backup.sql`, `createdb -T mario_products_development mario_products_development_tests`_
* _Run `rake db:migrate`_
* _Run `rails s` from the command line_
* _Open `localhost:3000` in browser_

## Documentation

| method | endpoint | description | params |
| --- | --- | --- | --- |
| GET | `/parks`| lists all parks | none |
| GET | `/park/{id}`| shows the park at id | none |
| POST | `/parks`| creates a park | name, location, kind, description |
| DELETE | `/park/{id}` | deletes the park at id | none |
| PUT | `/parks/id` | updates park at id | name, location, kind, description |
| GET | `/search` | finds park by name | name |
| GET | `/random` | returns a random park | none |

## Support and Contact Details
_For issues contact support@leepedersen.com_

## Technologies Used
* ruby
* git
* postgres
* SQL
* rails

### License
*This software is licensed under the MIT license.*

Copyright (c) 2020 **_Lee Pedersen_**
