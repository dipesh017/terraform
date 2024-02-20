resource "aws_iam_user" "user" {
  count = 2
  name = var.user_name[count.index]

  tags = {
    Name = var.user_name[count.index]
  }
}
