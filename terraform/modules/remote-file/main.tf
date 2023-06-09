resource "null_resource" "files" {
  for_each = fileset("${path.module}/files", "**")

  provisioner "local-exec" {
    command = "cat ${path.module}/files/${each.value}"
  }
}
