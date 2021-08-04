# アプリケーション名: キャラコミュ

# アプリケーション概要:  ログインしたユーザーが描いたキャラクターを画像で投稿できます。投稿したキャラクターは編集と削除ができます。ログインユーザーはトークルームを作成できます。そこで投稿したキャラクターになりきったログインユーザー同士でチャットができます。

# URL:  https://characommu.herokuapp.com/

# テスト用アカウント:

# 利用方法:  1.新規登録画面でユーザー登録します。  2.キャラクター投稿画面で描いたキャラクターを投稿します。  3.ルーム作成機能でチャットする部屋を作るか、既存の部屋に途中参加します。  4.ユーザーが描いたお互いのキャラクターでチャットします。  5.チャットを終える時はルーム退出かルーム削除か選択します。

# 目指した課題解決:  ターゲット:SNSを頻繁に利用している10~20代。上手くはないけどイラストを描くのが好きな人  目指した課題解決:  1.気軽にイラストを投稿できるアプリの作成  イラストの投稿サイトはtwitter,pixivを始めとしたサイトが多く存在します。そこで投稿している人は絵が上手い人が多いです。それにより私の友人は、落書きなど気軽に描いたイラストは敷居が高く投稿しにくい、と言ってました。「いいね」がつかなかったらどうしよう、自分が投稿したところで誰も見てくれない、などの意見があります。こうした理由から、もっとイラストを投稿しやすいようなサイトを作ろうと思いました。  2.コミュニケーション重視の投稿アプリの作成  SNSを多く利用するユーザーにとってユーザー同士のコミュニケーションは切り離せないと思いました。現状イラスト投稿サイトは投稿メインのサイトが多いですが、コミュニケーションに特化した投稿サイトはありませんでした。描いたキャラクターになりきってコミュニケーションをする、という形にすればコミュニケーションに特化できるのではないかと考えました。イラストが上手くないからこその面白さも引き出せるのではないかと思いました。またそうすればより気軽にイラストを投稿できるのではないかと思いました。

# 洗い出した要件  機能の説明  会員登録、ログイン機能:メールアドレスやパスワードを入力して会員登録ができたり、その保存した情報と一致すればログインする事ができます。  キャラクター投稿機能:描いたキャラクターの画像とキャラクターの情報を入力すると投稿できます。登録されたものはマイページに一覧表示されます。  キャラクター詳細機能:一覧表示にある画像かキャラクター名をクリックするとキャラクター詳細ページに遷移され、入力した情報が詳細に表示されます。		キャラクター編集機能:キャラクター詳細ページからキャラクター編集ページに遷移できます。保存されているキャラクターの情報を編集して更新する事ができます。  キャラクター削除機能:キャラクター詳細ページから行えます。詳細ページに表示されているキャラクターを削除する事ができます。  ルーム作成機能:チャットをするルームを作成する事ができます。ログインユーザーはチャットする自分のキャラクターを一体選択します。トークする相手は選択してもしなくてもいいです。  ルーム参加機能:既存の作成済みのルームにチャットしたい自分のキャラクターを一体選択してルームに参加する事ができます。  ルーム退出機能:チャットしている部屋から自分のキャラクターを退出させる事ができます。ルームはそのまま残ります。  ルーム削除機能:チャットしているルームを削除する事ができます。  メッセージ投稿機能:作成しているルームでメッセージのやりとりを他のユーザーとする事ができます。










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
