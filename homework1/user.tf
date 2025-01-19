resource "aws_iam_user" "Jenny" {
  name = "Jenny"
}

resource "aws_iam_user" "Rose" {
  name = "Rose"
}

resource "aws_iam_user" "Lisa" {
  name = "Lisa"
}


resource "aws_iam_user" "Jisso" {
  name = "Jisso"
}

resource "aws_iam_user" "Jihyo" {
  name = "Jihyo"
}

resource "aws_iam_user" "Sana" {
  name = "Sana"
}

resource "aws_iam_user" "Momo" {
  name = "Momo"
}

resource "aws_iam_user" "Dahyun" {
  name = "Dahyun"
}

resource "aws_iam_group" "blackpink" {
  name = "blackpink"
}

resource "aws_iam_group" "twice" {
  name = "twice"
}

resource "aws_iam_group_membership" "team1" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.Jenny.name,
    aws_iam_user.Rose.name,
    aws_iam_user.Lisa.name,
    aws_iam_user.Jisso.name,
  ]


  group = aws_iam_group.blackpink.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.Jihyo.name,
    aws_iam_user.Sana.name,
    aws_iam_user.Momo.name,
    aws_iam_user.Dahyun.name,
  ]

  group = aws_iam_group.twice.name
}