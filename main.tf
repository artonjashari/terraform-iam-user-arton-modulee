module "user-arton-modulee" {
  source  = "app.terraform.io/artonjashari/user-arton-modulee/iam"
  version = "1.0.1"
  # insert required variables here

  user_name = "arton-user"
  policy_name = "arton-policy"

  policy_document = {
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*", "iam:GetAccountPasswordPolicy", "elasticloadbalancing:DescribeLoadBalancers"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "iam:ChangePassword"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  
  }
}
