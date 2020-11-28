# 「Gulliver Works」
## 概要
株式会社Nekoの自社開発サービス

ITやコンサル、データサイエンスに特化したHRTech系サービス

## 技術スタック
### フロントエンド
- React
### バックエンド
- Ruby on Rails 6
### インフラ
- Kubernetes
- Terraform

## サービスストーリー
1. 参画者に求める技術スタック
- Gitの基礎知識
- Dockerの基礎知識
- Ruby on Railsの基礎知識
- REST APIの基礎知識

2. 導入している技術・Gem
- RSpec

    テストはRSpecを採用しています。
    
    テストデータはfactory_botに記述します。
    
    PRを立てる際はオールグリーンの状態で立ててください。

- Rubocop

    リンターにはRubocopを採用しています。
    
    RSpec同様、PR立てる際はオールグリーンの状態で立ててください。

- cancancan

    権限管理には「cancancan」を採用しています。
    
    このAPI制作において最も重要なGemと言えるものです。
    
    公式ドキュメントをよく読み、理解を深めてください。
    
# プロジェクト
Gulliver Worksの各プロジェクトについて

このサービスに「プロフィール・職歴・学歴機能」「募集・応募機能」「希望機能」「メッセージ・通知機能」の4つの機能の実装をお願いします。

各プロジェクトの詳細は以下に記載します。


## プロフィール・職歴・学歴機能開発
### ストーリー
1. なぜ必要か

    このサービスでは、ユーザーの個人情報であるプロフィール・職歴・学歴（従業員はプロフィールのみ）を入力することができます。
    
    企業はユーザーのプロフィール・職歴・学歴を閲覧することができ、ユーザーに対してスカウトを送ることができます。

2. どう使われるか

    各自のプロフィール・職歴・学歴は自由に編集できます。
    
    他ユーザーのプロフィール・職歴・学歴は閲覧することはできますが、編集することはできません。
    
    職歴は複数持つことができ、期間と職務内容を記載することができます。
    
    学歴は複数持つことができ、小学校〜大学院まで記載することができます。

### 要求
1. Profile APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること

2. Work History APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること
        
3. Academic History APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること    

### レビュー指標
1. ModelとSerializerが分かれた実装をしているか（ActiveRecordSerializerの使用を推奨）
2. RSpecにて、エンドポイントごとに正常なリクエストと異常なリクエストのパターンを1つずつ以上実装されているか
3. 必要なValidationやIndex、Referenceを実装しているか



## 募集・応募機能開発
### ストーリー
1. なぜ必要か

    このサービスの肝となる部分です。
    
    このサービスでは、企業が募集を作成し、公開することができます。
    
    ユーザーは、募集を閲覧し、応募することができます。

2. どう使われるか

    各企業は、募集を自由に編集することができます。
    
    他企業の募集を編集することはできません。
    
    各ユーザーは、募集に対して応募することができます。
    
    1つの募集に対して応募することができるのは一回までです。

    他ユーザーが応募した募集を閲覧することはできません。

### 要求
1. Recruitment APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること

2. Applicant APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること    

### レビュー指標
1. ModelとSerializerが分かれた実装をしているか（ActiveRecordSerializerの使用を推奨）
2. RSpecにて、エンドポイントごとに正常なリクエストと異常なリクエストのパターンを1つずつ以上実装されているか
3. 必要なValidationやIndex、Referenceを実装しているか



## 希望機能開発
### ストーリー
1. なぜ必要か

    このサービスでは、各ユーザーのトップページにはおすすめの募集やおすすめの企業を表示します。
    
    そのためには、ユーザーごとに希望の職種と雇用形態を把握する必要があります。
    
    ユーザーごとに希望の職種と雇用形態を入力することができます。


2. どう使われるか

    各ユーザーは、希望を自由に編集することができます。
    
    他ユーザーの希望を閲覧・編集することはできません。

### 要求
1. Hope APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること

### レビュー指標
1. ModelとSerializerが分かれた実装をしているか（ActiveRecordSerializerの使用を推奨）
2. RSpecにて、エンドポイントごとに正常なリクエストと異常なリクエストのパターンを1つずつ以上実装されているか
3. 必要なValidationやIndex、Referenceを実装しているか


## メッセージ・通知機能開発
### ストーリー
1. なぜ必要か

    このサービスでは、企業とユーザーはメッセージのやり取りができます。
    
    募集に応募していたユーザーと企業をマッチングし、採用の仲介を担う重要な機能となります。
    
    通知機能はメッセージの受信をユーザーが見逃さないように配慮します。

2. どう使われるか

    企業とユーザーの間にはトークルームがあり、企業側は所属している従業員であれば誰でもメッセージのやり取りをすることができます。
    
    各自、トークを作成することはできますが、編集・削除はできません。
    
    通知機能にメール配信は不要です。

### 要求
1. Room APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること

2. Message APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること
        
3. Notification APIの開発
    #### 要件
        1. OpenAPIを参照し、リクエストとレスポンスが実現できていること
        2. RSpecにて、Request Specが実装されていること

### レビュー指標
1. ModelとSerializerが分かれた実装をしているか（ActiveRecordSerializerの使用を推奨）
2. RSpecにて、エンドポイントごとに正常なリクエストと異常なリクエストのパターンを1つずつ以上実装されているか
3. 必要なValidationやIndex、Referenceを実装しているか


## 参照
### OpenAPI
https://github.com/uchidataku/gulliver-works_spec

各エンドポイントのURI・リクエストパラメーター・レスポンスなどの詳細を記載しています。

### ERD
![erd](https://user-images.githubusercontent.com/55920040/99649356-75d12080-2a97-11eb-967e-21bca46f2cf0.png)

各モデルの関係を示しています。

※補足
- Account: ユーザー（募集に応募する側）
- Company: 企業（募集を作成する側）
- Empoyee: 企業に所属する従業員（募集や応募を管理するユーザー）
