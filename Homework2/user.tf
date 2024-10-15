#Create users with for_each
resource "aws_iam_user" "users" {
  for_each = toset(["jenny","rose","lisa","jisoo"])
  name = each.value
}

#Create group blackpink
resource "aws_iam_group" "group" {
  name = "blackpink"
}

resource "aws_iam_group_membership" "team" {
  name = "blackpink-group"
  group = aws_iam_group.group.name
  users = [for i in aws_iam_user.users : i.name]
}