# AWS ECS Terraform Example

このリポジトリは、AWS ECSクラスターをTerraformを使って作成する例を提供します。

## アーキテクチャ

このTerraformコードは以下のAWSリソースを作成します：

- VPC（2つのアベイラビリティゾーン）
- ECSクラスター
- Auto Scaling Group（ARM64インスタンス）
- ECS Capacity Provider

## 前提条件

- Terraform v1.0.0以上
- AWS CLIのインストールと設定
- AWS認証情報の設定

## 使用方法

1. リポジトリのクローン：
```bash
git clone [repository-url]
cd aws-terraform-ecs-example
```

2. 変数の設定（必要に応じて）：
   - `variables.tf`ファイルで定義されている変数をカスタマイズできます
   - または、`terraform.tfvars`ファイルを作成して変数を上書きできます

3. Terraformの初期化：
```bash
terraform init
```

4. 実行計画の確認：
```bash
terraform plan
```

5. インフラストラクチャのデプロイ：
```bash
terraform apply
```

6. クリーンアップ：
```bash
terraform destroy
```

## 変数

| 名前 | 説明 | デフォルト値 |
|------|------|------------|
| vpc_cidr | VPCのCIDRブロック | 10.0.0.0/16 |
| region | AWSリージョン | ap-northeast-1 |

## 出力値

| 名前 | 説明 |
|------|------|
| cluster_name | ECSクラスターの名前 |
| cluster_id | ECSクラスターのID |
| cluster_arn | ECSクラスターのARN |
| vpc_id | 作成されたVPCのID |
| subnet_ids | 作成されたサブネットのID一覧 |

## 注意事項

- このコードはARM64アーキテクチャのインスタンスを使用します（コスト最適化のため）
- Auto Scaling Groupは最小1、最大3インスタンスで設定されています
- Container Insightsが有効化されています

## ライセンス

このプロジェクトは[MIT License](LICENSE)の下で公開されています。

詳細については[LICENSE](LICENSE)ファイルを参照してください。

## 作者

ryome