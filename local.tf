resource "local_file" "devops"{
   filename =  "/home/ubuntu/terraform-course/terraform-local/devops-automated.txt"
   content = "I want to become devops Engineer"
}

resource "random_string" "rand_str" {
length = 16
special = true
override_special = "!#$%&*()-_=[]{}<>;?"
}

output "rand_str" {
value = random_string.rand_str[*].result
}
