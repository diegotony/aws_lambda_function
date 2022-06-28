# resource "random_pet" "this" {
#   prefix = "${var.function_name}-functions"
#   length = 13
# }

# resource "aws_s3_bucket" "this" {
#   bucket        = random_pet.this.id
#   force_destroy = true
# }

# output "test" {
#   value = aws_s3_bucket.this.id
# }

# resource "aws_s3_bucket_object" "this" {
#   bucket = aws_s3_bucket.this.bucket
#   key    = var.function_name
#   source = data.archive_file.zip.output_path
#   etag   = filemd5(data.archive_file.zip.output_path)
# }
