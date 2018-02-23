variable "folder_name" {
  description = "The folder name"
  default = "sj-test-folder"
}
variable "org_id" {
  description = "The organization ID"
  default = "********"
}
variable "env" {
  description = "The project environments"
  type = "list"
  default = ["test", "dev"]
}
variable "project_name" {
  description = "The project name to be created under the folder"
  default = "sj-test-project"
}
variable "bill_account_id" {
  description = "The billing account ID"
  default = "******"
}
variable "api_services" {
  description = "The APIs to be enabled for the project"
  type = "list"
  default = ["iam.googleapis.com", "cloudresourcemanager.googleapis.com"]
}
