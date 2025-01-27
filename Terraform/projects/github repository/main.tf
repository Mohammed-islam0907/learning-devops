resource "github_repository" "example" {
  name        = "Terraform-made-this"
  description = "Guess what? I made this repo with Terraform!!"

  visibility = "public"
}