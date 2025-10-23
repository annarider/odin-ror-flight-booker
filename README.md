# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

## Data model

* Airport (parent)
** has_many :flights

* Flight (child/many-to-many)
date:date
number_of_passengers:integer
** belongs_to :airport_from, class_name: 'Airport', foreign_key: 'airport_from_id'
** belongs_to :airport_to, class_name: 'Airport', foreign_key: 'airport_to_id'

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
