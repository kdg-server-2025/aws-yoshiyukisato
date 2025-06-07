terraform{
  required_version = "1.11.4"

  backend "s3" {

    # バケット名.
    bucket = "kdg-aws-2025-yoshiyuki"

    # tfstateファイルが作成される場所の指定.
    key = "kdg-aws-2025-yoshiyuki/terraform.tfstate"

    region = "ap-northeast-1"

    encrypt = "true"
  }

}
