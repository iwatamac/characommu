# テーブル設計

## usersテーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |        
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |
| birthday           | date     | null: false               |
| telephone          | string   | null: false               |


### Association
- has_many :characters
- has_many :places
- has_many :place_characters


## charactersテーブル

| Column             | Type        | Options                        |
| ------------------ | ----------- | -------------------------------|
| name               | string      | null: false                    |
| residence          | string      |                                |
| gender_id          | integer     |                                |
| introductions      | text        |                                |
| user               | references  | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :places
- has_many :place_characters
- has_many :messages


## placesテーブル

| Column      | Type        | Options                         |
| ----------- | ----------- | --------------------------------|
| name        | string      | null: false                   |

### Association
- has_many :character
- has_many :place_characters
- has_many :messages

## place_charactersテーブル

| Column        | Type        | Options                         |
| ------------- | ----------- | --------------------------------|
| character     | references  | null: false,foreign_key: true   |
| place         | references  | null: false,foreign_key: true   |

### Association
- belongs_to :place
- belongs_to :character

## messagesテーブル

| Column        | Type        | Options                         |
| ------------- | ----------- | --------------------------------|
| content       | string      | 
| character     | references  | null: false,foreign_key: true   |
| place         | references  | null: false,foreign_key: true   |

### Association
- belongs_to :place
- belongs_to :character
