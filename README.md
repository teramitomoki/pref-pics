# Pref-pics
[![Image from Gyazo](https://i.gyazo.com/2a77412f03e09bd597152d40a0d7acfa.png)](https://gyazo.com/2a77412f03e09bd597152d40a0d7acfa)

# 概要
https://pref-pics.herokuapp.com/

都道府県に関する写真をシェアできるアプリです。
これまでに足を運んだスポット、食べ物、思い出などをシェアしましょう！
誰かの投稿した写真で、行きたい場所、次に行く場所の雰囲気が
少し知れるかもしれません。
また新しいスポットへ足を運ぶきっかけになるかも...!!
# DEMO
トップページ
[![Image from Gyazo](https://i.gyazo.com/3c3576db42263856e8ef3822dd47c85b.gif)](https://gyazo.com/3c3576db42263856e8ef3822dd47c85b)

サインアップページ
[![Image from Gyazo](https://i.gyazo.com/007e9cb08d95df4695e6d825502781e3.gif)](https://gyazo.com/007e9cb08d95df4695e6d825502781e3)

ログインページ
[![Image from Gyazo](https://i.gyazo.com/d9cd4242368e1694713508e37b07f2b4.gif)](https://gyazo.com/d9cd4242368e1694713508e37b07f2b4)

# ID/Pass
ID:admin  
Pass:2222
# テストアカウント
こちらをご使用下さい(googleログインには非対応)

* メールアドレス  
test@gmail.com

* パスワード  
test1111  

# 作成期間
* 2021/8/23 TECH CAMPにて学習開始
* 2021/10/21 本リポジトリ作成、デプロイ
* 2021/10/29 ユーザー管理機能、画像投稿機能、投稿編集機能、投稿削除機能実装完了
* バージョンアップを継続
# 仕様
* macOS Big Sur 11.6
* Ruby 2.6.6
* RubyGems 3.0.3
* Rails 6.1.4.1
* My SQL 5.6.51
* RSpec,factory_bot
* GitHub,GitHubDesktop
* VSCode
* Heroku  

# 主な機能
## ユーザー
* サインアップ、ログイン、ログアウト  
* ユーザーは同じメールアドレスでは登録できない
* ユーザーは同じ名前では登録できない  
## トップページ
* クリック対応の都道府県の形をしたフリー素材を仕様  
* HTMLとCSSのみで都道府県を構築  
## キューブ型３Dオブジェ
* 地域の有名なスポットを表示
* サインアップ、ログイン画面では自動で回転  
* トップページ、新規投稿画面ではマウスオーバーで回転  
※スマートフォン画面には対応していません
[![Image from Gyazo](https://i.gyazo.com/7eabe9f1049c81841963633568760c1b.gif)](https://gyazo.com/7eabe9f1049c81841963633568760c1b)

## レスポンシブ対応
* 横幅777pxまでは日本列島を表示  
* 501px~776pxまでは地域別で表示  
* 500px以下はリスト表示
[![Image from Gyazo](https://i.gyazo.com/7f0be758bb1ab7072d5a48cc538d492b.gif)](https://gyazo.com/7f0be758bb1ab7072d5a48cc538d492b)

## ボタン発光
* CSSでhoverの背景を白くすることで発光しているかのように表示
[![Image from Gyazo](https://i.gyazo.com/5558de94533deb1442831e7a4cd305a6.gif)](https://gyazo.com/5558de94533deb1442831e7a4cd305a6)

## 画像投稿
* 画像を投稿、一覧表示  
* 都道府県、ジャンルをActiveHashにて実装  
* image、都道府県、ジャンル、タイトルは入力必須  

[![Image from Gyazo](https://i.gyazo.com/228ddc25f63453baabd8a006a9e7bd75.gif)](https://gyazo.com/228ddc25f63453baabd8a006a9e7bd75)

# 今後実装したいこと
* 各都道府県毎の一覧ページ作成  
* 投稿をしたら各都道府県のページへ振り分け設定
* ジャンル別検索機能
* いいね機能
* コメント投稿機能

ログインしていなくても気軽に投稿が見れることが目的のため、ユーザー管理機能は最低限での実装にしています。

今後は都道府県投毎に投稿一覧ページを見やすくし、投稿写真へのコメント機能も実装したく考えています。
いいね機能で、気に入った投稿を管理できるようにし、〇〇県の画像を見つけやすいよう実装すべきと考えています。


# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false              |
| name               | string | null: false              |

### Association

- has_many :posts

## posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| prefecture_id | integer    | null: false                    |
| genre_id      | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prefecture
- belongs_to :genre

## prefectures テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | references | null: false, foreign_key: true |

### Association

- has_many :posts

## genres テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | references | null: false, foreign_key: true |

### Association

- has_many :posts

# 連絡先
寺見友基 テラミトモキ  
Gmail / teramitomoki@gmail.com  
twitter / https://twitter.com/ttomo200100