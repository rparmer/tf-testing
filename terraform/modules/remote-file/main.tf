resource "null_resource" "files" {
  for_each = fileset("${path.modules}/files", "**")

  provisioner "local-exec" {
    command = "cat ${path.modules}/files/${each.value}"
  }
}
