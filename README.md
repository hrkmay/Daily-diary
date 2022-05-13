### README
# アプリ名

Daily-Diary

# 概要

新規登録をして、日々の日記を記録することができる。投稿した日記は新しい順に上から順に表示される。また、一度投稿した日記は、投稿したユーザー本人であれば編集もしくは削除することができる。

# 本番環境

https://daily-diary-37033.herokuapp.com/
# テスト用アカウント
| Basic認証 ID | Basic認証 Pass | ユーザー名       | メールアドレス    | パスワード | 
| ----------- | -------------- | -------------- | --------------- | -------- |
| hrkmay | 8492 | テスト | tesuto@sample.com | aaaccc1 | 


# 利用方法
トップページ上部の「新規登録」ボタンから新規登録を済ませ、ページ右下の「日記を書く」から日記を書いて投稿できる。
投稿した日記はトップページに表示され、投稿をクリックすると投稿の詳細ページに遷移する。
投稿した日記は、投稿した本人であれば投稿詳細画面から編集、削除ができる。

# 目指した課題解決

・プログラミングの学習を始めて、仕事終わりにパソコンを触る生活が主要な生活になってから、日々の学習記録を紙媒体に変えて書くことに対して不便な点や煩わしい点が増えてきた。  
・パソコンを使うデスクワークを行う人々が、途中で媒体に変える煩わしさなくそのままパソコンに記録できるようにするため。  
・パソコン内で調べたページや、記事のコピペを、媒体の移行なしで貼り付けて保存することで、業務の効率化を目指す。  
・日付けや天気が記録でき、いつ自分がどのような場面でつまづいたか、さまざまな側面(日付け、天気)を紐づけて思い出すことができるようにするため。  

# 洗い出した要件
| 機能            | 目的    | 詳細    | ストーリー(ユースケース) |
| -------------- | ------- |------- |--------------------- | 
| ユーザー管理機能  | 自身が投稿した日記のみ編集、削除できるようにするため | ユーザーを新しく登録することができる ユーザーが登録されている場合、ログインすることができる ログアウトできる | ページ上部の新規登録ボタンから新規登録できる |
| 日記投稿画面     | その日の出来事や、仕事の進捗状況などを気軽に打ち込めるようにするため | ログインすることで、西暦、日付け、曜日、天気、タイトル、その日の出来事を入力することで日記を投稿することができる | トップページ下部の「日記を書く」をクリックすると投稿画面へ遷移する 西暦、日付け、曜日、天気、タイトル、テキストは全て必須項目 |
| 日記編集削除機能 | 一度投稿した内容を編集したり、削除することができる | 投稿したユーザーのみが投稿した内容を編集、削除できる | 詳細画面から編集ボタンを押すと、投稿画面に似た編集ページへ遷移する 

# 実装した機能についての画像やその説明
## トップページ
<img id="image" src="https://i.gyazo.com/6816f369570106740be6b27818d40307.png" class="with-alert shrinkToFit">  
・右上に新規登録とログインボタンがあり、ログインすることで画面下部の「日記を書く」から日々の日記を投稿することができる。<br>
・ログインしていない状態では投稿はできず、ログインしていない状態で投稿ボタンを押すとログイン画面に遷移する。<br>
・画面中央には、投稿された日記が上から新しい順に表示される。<br>

## 新規登録画面
<img id="image" src="https://i.gyazo.com/6c1fc1a63d1e5b15e13d7ef6ccfd21e0.png" class="with-alert shrinkToFit">
・ユーザー名、メールアドレス、パスワード(6文字以上)は全て必須事項。  

## 詳細表示画面
<img id="image" src="https://i.gyazo.com/737bad5f1e5e87d161cada7609eb1352.png" class="with-alert overflowing">  
・投稿した内容がより読みやすくなるようにした。<br>
・日付けや曜日、天気はは青の背景を追加し、最も大きく表示。<br>
・タイトルは真ん中だが、他とは差をつけるために若干内側に入り込むように配置した。<br>
・内容は一番下で、全文が表示できるような十分なスペースを作った。<br>

## 編集・削除機能
### 編集 
<img id="image" src="https://i.gyazo.com/4bcd25b0b95258d44c313c24a9e45857.gif" class="with-alert shrinkToFit">

### 削除
<img id="image" src="https://i.gyazo.com/0348d1c51d01176f1ef7cd3a41e902c8.gif" class="with-alert shrinkToFit">

・日記投稿画面と同じ見た目で作成した。
・編集、削除機能は投稿したユーザーと編集削除するユーザーが一致していないと更新できない。

# 工夫したポイント
・初見の方を含め、だれが見てもすぐに操作がしやすいような、わかりやすくい見た目にした。  
・西暦や日付け等の選択画面はActiveHashを利用することで、毎回ユーザーが打ち込む手間を省けるようにした。  
・投稿一覧では、投稿の色使いや、余白の使い方を自分なりに工夫して、投稿ごとが分かりやすく認識できるようにした。  
・エラーメッセージが表示される際に見た目が大きくズレてしまうことがあったので、エラーメッセージを画面横に表示させることで,  
  フォームの文とエラーメッセージが全て視認できるように配置した  

# 実装予定の機能
・投稿された日記を月ごとに表示される機能  
・トップページ、投稿画面、新規登録画面...すべてのページのビューをより見やすくする  

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :tasks

## tasks テーブル

| Column               | Type         | Options     |
| -------------------- | ------------ | ----------- |
| user_id              | string       | null: false |
| year_id              | integer      | null: false |
| month_id             | integer      | null: false |
| day_id               | integer      | null: false |
| dayofweek_id         | integer      | null: false |
| weather_id           | integer      | null: false |
| title                | string       | null: false |
| text                 | sentence     | null: false |

### Association
- belongs_to :user, optional: true
- belongs_to_active_hash :year
- belongs_to_active_hash :month
- belongs_to_active_hash :day
- belongs_to_active_hash :dayofweek
- belongs_to_active_hash :weather


# ローカルでの動作方法
- サーバーの再起動(rails s)で起動
- ruby 2.6.5p114(2019-10-01 revision 67812) [x86_64-darwin18]
- gem 'devise'
- gem 'active_hash'
