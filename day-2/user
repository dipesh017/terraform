resource "aws_iam_user" "user" {
  count = 2
  name = var.user_name[count.index]

  tags = {
    Name = var.user_name[count.index]
  }
}


resource "aws_iam_user" "iamuser" {
  for_each = toset(var.new_user_name)
  name = each.key
  
  tags = {
    Name = each.key
  }
}

resource "aws_iam_user" "iamusermap1" {
  for_each = var.user_data
  name = each.key
  
  tags = {
    Name = each.key
    Country = each.value
  }
}

resource "aws_iam_user" "iamusermap2" {
  for_each = var.user_info
  name = each.key
  
  tags = {
    Name = each.key
    Phone = each.value.phone
    Email = each.value.email
  }
}


output "iamuser" {
  value = [
    for x in aws_iam_user.iamuser : x.id
  ]
}
output "rami_user_id" {
  value = aws_iam_user.user[0].id
}
output "user_id" {
  value = aws_iam_user.user[*].id
}
output "user_iamusermap1" {
  value = {
    for x,y in aws_iam_user.iamusermap1 : x => y.arn
  }
}