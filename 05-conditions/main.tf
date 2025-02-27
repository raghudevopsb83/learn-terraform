resource "local_file" "test" {
  filename = "/tmp/a.txt"
  content = var.content == null ? "Null Content" : var.content
}

variable "content" {
  default = null
}

# condition is all about what value to give to a argument.
# Now we can use this as an advantage and decide whether we can run this resource or not using a count loop

resource "null_resource" "test" {
  count = 0
}




