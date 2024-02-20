resource "aws_iam_user" "user" {
  count = 2
  name = var.user_name[count.index]

  tags = {
    Name = var.user_name[count.index]
  }
}


resource "aws_iam_user" "iamuser" {
  for_each = toset(var.user_name)
  name = each.key
  
  tags = {
    Name = each.key
  }
}

output "rami_user_id" {
  value = aws_iam_user.user[0].id
}
output "user_id" {
  value = aws_iam_user.user[*].id
}