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
* _Recreate database by running these commands from the root directory of the project: `createdb parks_lookup_development`, `psql parks_lookup_development < parks_backup.sql`, `createdb -T parks_lookup_development parks_lookup_development_tests`_
* _Run `rake db:migrate`_
* _Run `rails s` from the command line_

## Documentation

| method | endpoint | description | params |
| --- | --- | --- | --- |
| GET | `/parks`| lists 30 parks, defaults to first 30 | page |
| GET | `/park/{id}`| shows the park at id | |
| POST | `/parks`| creates a park | name, location, kind, description |
| DELETE | `/park/{id}` | deletes the park at id | |
| PUT | `/parks/id` | updates park at id | name, location, kind, description |
| GET | `/search` | finds park by name, location, or kind | name OR location OR kind |
| GET | `/random` | returns a random park | |
| GET | `/sort` | returns parks sorted by name, location or kind | name OR location OR kind |

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
