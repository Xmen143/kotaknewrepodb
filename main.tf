resource "null_resource" "example" {
  triggers = {
    # Change this trigger whenever you want to re-run the command
    always_run = "${timestamp()}"
  }

 WWWWW

  # Execute a shell command when this resource is created or updated
  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}

 

# Output the result of the shell command
output "shell_output" {
  value = null_resource.example.triggers.always_run
}
