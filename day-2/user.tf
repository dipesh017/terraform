resource "aws_iam_user" "user" {
  name = "rami"

  tags = {
    Name = "rami"
  }
}