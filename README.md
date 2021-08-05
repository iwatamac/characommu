# アプリケーション名: キャラコミュ

# アプリケーション概要:  
ログインしたユーザーが描いたキャラクターを画像で投稿できます。投稿したキャラクターは編集と削除ができます。ログインユーザーはトークルームを作成できます。そこで投稿したキャラクターになりきったログインユーザー同士でチャットができます。

# URL:  https://characommu.herokuapp.com/

# テスト用アカウント:

# 利用方法:
1.新規登録画面でユーザー登録します
2.キャラクター投稿画面で描いたキャラクターを投稿します。  
3.ルーム作成機能でチャットする部屋を作るか、既存の部屋に途中参加します。  
4.ユーザーが描いたお互いのキャラクターでチャットします。  
5.チャットを終える時はルーム退出かルーム削除か選択します。

# 目指した課題解決:  ターゲット:SNSを頻繁に利用している10~20代。上手くはないけどイラストを描くのが好きな人  目指した課題解決:  1.気軽にイラストを投稿できるアプリの作成  イラストの投稿サイトはtwitter,pixivを始めとしたサイトが多く存在します。そこで投稿している人は絵が上手い人が多いです。それにより私の友人は、落書きなど気軽に描いたイラストは敷居が高く投稿しにくい、と言ってました。「いいね」がつかなかったらどうしよう、自分が投稿したところで誰も見てくれない、などの意見があります。こうした理由から、もっとイラストを投稿しやすいようなサイトを作ろうと思いました。  2.コミュニケーション重視の投稿アプリの作成  SNSを多く利用するユーザーにとってユーザー同士のコミュニケーションは切り離せないと思いました。現状イラスト投稿サイトは投稿メインのサイトが多いですが、コミュニケーションに特化した投稿サイトはありませんでした。描いたキャラクターになりきってコミュニケーションをする、という形にすればコミュニケーションに特化できるのではないかと考えました。イラストが上手くないからこその面白さも引き出せるのではないかと思いました。またそうすればより気軽にイラストを投稿できるのではないかと思いました。

# 洗い出した要件:  機能の説明
会員登録、ログイン機能:ユーザーが会員登録ページでメールアドレスやパスワードを入力して会員登録ができ、トップページにログインユーザー名が表示されます。
ログアウトしたユーザーがログインページで、登録したメールアドレスとパスワードを入力してデータと一致すればログインする事ができます。










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
