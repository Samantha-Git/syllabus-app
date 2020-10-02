# README

# シラバス検索サイト DB設計

## subjectsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|weekday|string|null: false|
|period|integer|null: false|
|teacher_id|integer|null: false, foreign_key: true|
|lecture_id|integer|null: false, foreign_key: true|
### Association
- has_many :teachers, dependent: :destroy
- has_many :lectures, dependent: :destroy


## teachersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- belongs_to :subject, dependent: :destroy
- has_many :lectures, dependent: :destroy


## lecturesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|date|string|null: false|
### Association
- belongs_to :subject, dependent: :destroy
- belongs_to :teacher, dependent: :destroy

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
