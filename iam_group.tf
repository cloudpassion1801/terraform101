resource "aws_iam_group" "dev" {
    name = "dev"
  
}
resource "aws_iam_group_policy" "dev_policy" {
    name = "dev_policy"
    group = aws_iam_group.dev.name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
resource "aws_iam_group_membership" "my_membership" {
    name = "my_membership"
    group = aws_iam_group.dev.name
    users = [aws_iam_user.my_user[0].name,aws_iam_user.my_user[1].name]


    
  
}