# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "custom" {
  name              = "my_server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systenctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>'"
  key_pair_name     = "week4-key"
  tags = {
    Team      = "DevOps"
    env       = "dev"
    create_by = "terraform"
  }
}