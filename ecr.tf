resource "aws_ecr_repository" "foo" {
  name                 = "devops-training-arton/web-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}