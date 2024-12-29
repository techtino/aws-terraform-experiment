terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_key_pair" "macbook-pro" {
    key_name = "techtino-macbook-pro"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDaOkfgnC0JEe1VluHOUkckK/7sI4OEzCypEvxTsNPu+AS/yf62AWFCc/o98a2wuXWP+Icoc4bl7VupqHVHbYccfR0PoiR9ly6RzKg/8rHRQ9KOpfR+S+odpfwxhaJ7A8K0lcEBjRH+yj+q9SoPRaYURjG4uoKGQiJaEXTy3U1FqoW633EdO+WNdtsz3SM+qBPuTLXCkTMuP5lnnOZPDdNcuqT3JF6YpX6vOLjEE21S3Az/HdNab9ws3jzZtEuRRSeB/8567i80/eJwAQYeYFJ2Y2G/7qC3rThJIjhDQchxaPKaxHH22qKPE8bfMo5rBeOx/TVMccqjj28hz0nwSQyuzR6N9OyMOsIAadS3B1hnspgnTLsWUDk+7fnRJaHspZyh4fGh+pQQWdy0Mqtf35rWA9bJZ0XMIalwTorvJseFjcvKAZnD2thN/h+Xgz8RtF7XwHsnuaj5o7Rj/YLy+07gr4vwbj5g7sbKfmmilSlqagmmTZAJyEhoMki8VtWeGBE= techtino@Valentinos-MacBook-Pro.local"
}