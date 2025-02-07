provider aws {
    region = "us-east-1" 
}

resource "aws_key_pair" "Bastion" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-ainurus"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "kaizen-ainurus10"
}

resource "aws_s3_bucket" "mybucket2" {
  bucket = "kaizen-ainurus20"
}

#terraform import aws_s3_bucket.mybucket kaizen-ainurus10
#terraform import aws_s3_bucket.mybucket2 kaizen-ainurus20