#Deploy S3 Bucket

resource "aws_s3_bucket" "bucket" {
  bucket = "mohammed-big-bucket!!!"

  tags = {
    
    Environment = "Dev"
  }
}