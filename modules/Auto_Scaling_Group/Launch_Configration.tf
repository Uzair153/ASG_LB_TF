
// Launch Configration
resource "aws_launch_configuration" "LC" {
  image_id        = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.SG.id]
  #  vpc_security_group_ids = [aws_security_group.SG.id]
  key_name        = aws_key_pair.test-key.key_name
  
}

output "LC_id" {
  value = aws_launch_configuration.LC.id
}