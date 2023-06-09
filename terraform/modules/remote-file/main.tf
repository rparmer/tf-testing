resource "null_resource" "files" {
  for_each = fileset("../../../files", "**")

  provisioner "local-exec" {
    command = "cat ../../../files/${each.value}"
  }
}
