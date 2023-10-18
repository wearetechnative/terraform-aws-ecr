resource "aws_ecr_repository" "this" {
  name = var.name

  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = var.encryption_kms_key_arn
  }

  image_tag_mutability = var.image_tag_mutability ? "MUTABLE" : "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecr_repository.this.name

  policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep the ${var.num_keep_images} most recent images",
        selection = {
          tagStatus   = "any",
          countType   = "imageCountMoreThan",
          countNumber = var.num_keep_images
        },
        action = {
          type = "expire"
        }
      }
    ]
  })
}
