resource "aws_iam_user" "my_user" {
    count = 2
    name = "cloudpassion_${count.index}"
  
}
resource "aws_iam_user_policy" "my_user_policy" {
    name = "my_user_testpolicy"
    user =  aws_iam_user.my_user[0].name
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
