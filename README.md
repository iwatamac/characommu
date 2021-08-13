# アプリケーション名: キャラコミュ

## アプリケーション概要:  
ログインしたユーザーが描いたキャラクターを画像で投稿できます。投稿したキャラクターは編集と削除ができます。ログインユーザーはトークルームを作成できます。そこで投稿したキャラクターになりきったログインユーザー同士でチャットができます。

## URL:  https://characommu.herokuapp.com/

## テスト用アカウント:
ユーザーA
ユーザー名:太郎
アドレス:a@gmail.com
パスワード:123456a

ユーザーB
ユーザー名:一郎
アドレス:b@gmail.com
パスワード:123456b

## 利用方法:
1.新規登録画面でユーザー登録します。
2.キャラクター投稿画面で描いたキャラクターを投稿します。  
3.ルーム作成機能でチャットする部屋を作るか、既存の部屋に途中参加します。  
4.ユーザーが描いたお互いのキャラクターでチャットします。  
5.チャットを終える時はルーム退出かルーム削除か選択します。

## 目指した課題解決:  
### ターゲット:SNSを頻繁に利用している10~20代。上手くはないけどイラストを描くのが好きな人  
### 目指した課題解決:  
1.気軽にイラストを投稿できるアプリの作成  
イラストの投稿サイトはtwitter,pixivを始めとしたサイトが多く存在します。そこで投稿している人は絵が上手い人が多いです。それにより私の友人は、落書きなど気軽に描いたイラストは敷居が高く投稿しにくい、と言ってました。「いいね」がつかなかったらどうしよう、自分が投稿したところで誰も見てくれない、などの意見があります。こうした理由から、もっとイラストを投稿しやすいようなサイトを作ろうと思いました。  
2.コミュニケーション重視の投稿アプリの作成  
SNSを多く利用するユーザーにとってユーザー同士のコミュニケーションは切り離せないと思いました。現状イラスト投稿サイトは投稿メインのサイトが多いですが、コミュニケーションに特化した投稿サイトはありませんでした。描いたキャラクターになりきってコミュニケーションをする、という形にすればコミュニケーションに特化できるのではないかと考えました。イラストが上手くないからこその面白さも引き出せるのではないかと思いました。またそうすればより気軽にイラストを投稿できるのではないかと思いました。

## 洗い出した要件: 機能の説明
### 会員登録、ログイン機能:
ユーザーが会員登録ページでメールアドレスやパスワードを入力して会員登録ができ、トップページにログインユーザー名が表示されます。ログアウトしたユーザーがログインページで、登録したメールアドレスとパスワードを入力してデータと一致すればログインする事ができます。ログインした後にユーザー名が表示されるのでクリックするとマイページのキャラクター一覧画面に遷移されます。
[![Image from Gyazo](https://i.gyazo.com/2c8fe195d66348a2473a75d40944142f.gif)](https://gyazo.com/2c8fe195d66348a2473a75d40944142f)
[![Image from Gyazo](https://i.gyazo.com/07d4c2d6b8657b8b41e122991f6c7d92.gif)](https://gyazo.com/07d4c2d6b8657b8b41e122991f6c7d92)
### キャラクター投稿機能:
ログインユーザーがキャラクター新規作成ページで、描いたキャラクターの画像とキャラクターの情報を入力すると投稿する事ができます。投稿されたものはマイページにキャラクターの画像と名前が一覧表示されます。
[![Image from Gyazo](https://i.gyazo.com/451c1260eaf3d410dafda6d1bbc9be2a.gif)](https://gyazo.com/451c1260eaf3d410dafda6d1bbc9be2a)
[![Image from Gyazo](https://i.gyazo.com/7f8e4693ccb9d19f7a9a4f06e2548ea9.gif)](https://gyazo.com/7f8e4693ccb9d19f7a9a4f06e2548ea9)
### キャラクター詳細機能:
ログインユーザーがマイページに一覧表示している投稿したキャラクター名か画像をクリックするとキャラクター詳細ページに遷移されます。投稿したキャラクターの情報が詳細に表示されます。
[![Image from Gyazo](https://i.gyazo.com/5de9e92e3f451738b1f38dec541bf394.gif)](https://gyazo.com/5de9e92e3f451738b1f38dec541bf394)
### キャラクター編集機能:
ログインユーザーが自分で投稿したキャラクター詳細ページにある編集ボタンを押すとキャラクター編集ページに遷移できます。保存されているキャラクターの項目を入力し直す事ができ、キャラクターの情報を更新する事ができます。
[![Image from Gyazo](https://i.gyazo.com/c0934a12dec10cd002be1e7f42c5c641.gif)](https://gyazo.com/c0934a12dec10cd002be1e7f42c5c641)
### キャラクター削除機能:
ログインユーザーが自分で投稿したキャラクター詳細ページにある削除ボタンを押すとキャラクター一覧画面から削除できます。
[![Image from Gyazo](https://i.gyazo.com/ce15e1b6a90a70a2ce0d5f1f8c42859d.gif)](https://gyazo.com/ce15e1b6a90a70a2ce0d5f1f8c42859d)
### ルーム作成機能:
ログインユーザーはマイページからチャットをするルームを作成する事ができます。ルームの名前を入力します。
ログインユーザーはチャットする投稿した自分のキャラクターを一体選択します。
チャットする相手のキャラクターを一体選択します。相手のキャラクターは他のユーザーが投稿したキャラクターです。選択しなくてもルーム作成は可能です。
作成した後はルーム一覧に作成したルーム名が表示されます。ルーム名をクリックすると選択されたキャラクターの画像と名前が表示されます。
[![Image from Gyazo](https://i.gyazo.com/181d0fadf235d798b6b7af63c296477b.gif)](https://gyazo.com/181d0fadf235d798b6b7af63c296477b)
[![Image from Gyazo](https://i.gyazo.com/11e4de0f86d55eb4d98cbf45d18b5466.gif)](https://gyazo.com/11e4de0f86d55eb4d98cbf45d18b5466)
### ルーム参加機能:
ログインユーザーはルーム一覧から既存の作成済みのルームをクリックすると、自分で投稿したキャラクターがルームに選択されていない場合参加ボタンが表示されます。ルーム参加ページに遷移され、チャットしたい自分のキャラクターを一体選択すればルームに参加する事ができます。
[![Image from Gyazo](https://i.gyazo.com/3d3184e97c69165ea1a59d1f1e9a56e0.gif)](https://gyazo.com/3d3184e97c69165ea1a59d1f1e9a56e0)
### ルーム退出機能:
ログインユーザーは選択しているルームページの退出ボタンをクリックすると自分のキャラクターをルームから削除する事ができます。削除されたキャラクターはルームから消えますが、ルームはそのまま残ります。
[![Image from Gyazo](https://i.gyazo.com/476ba5a09ec6be8deb2e879f4b8b6b6d.gif)](https://gyazo.com/476ba5a09ec6be8deb2e879f4b8b6b6d)
### ルーム削除機能:
ログインユーザーは選択しているルームページの削除ボタンをクリックすると、そのルームを選択しているキャラクターとルームを削除する事ができます。削除された後はルーム名がルーム一覧から削除されます。
[![Image from Gyazo](https://i.gyazo.com/c306bce6052ebab16b86fce5db5a18d7.gif)](https://gyazo.com/c306bce6052ebab16b86fce5db5a18d7)
### メッセージ投稿機能:
ログインユーザー同士が、選択されたルームページのフォームにメッセージを入力し投稿する事で内容がルーム内に表示されます。投稿したユーザーによってメッセージの表示される位置が左右に分かれます。
[![Image from Gyazo](https://i.gyazo.com/1f9381906ac201dab941ddc7c13cbbf5.gif)](https://gyazo.com/1f9381906ac201dab941ddc7c13cbbf5)
[![Image from Gyazo](https://i.gyazo.com/8117d86cfa8d6fae18ca97c88f7d17fe.gif)](https://gyazo.com/8117d86cfa8d6fae18ca97c88f7d17fe)


## 実装予定の機能
### ログイン・会員登録機能:
バリデーションによるエラーメッセージが表示されないのを改善したいです。
### ルーム作成機能:
自分のチャットするキャラクターを選択した時に、どのキャラクターを選んでも同じキャラクターが表示されるのを改善したいです。
### メッセージ投稿機能:
メッセージの投稿者名がログインユーザーではなく、チャットしているキャラクター名に表示を変更させたいです。
また、メッセージの投稿表示位置を自分と相手で分別できるよう改善したいです。







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
