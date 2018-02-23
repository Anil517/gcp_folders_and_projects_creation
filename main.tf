resource "google_folder" "gcp_folder" {
  display_name = "${var.folder_name}"
  parent       = "organizations/${var.org_id}"
}

resource "google_project" "gcp_project" {
  count = "${length(var.env)}"
  name  = "${var.project_name}-${element(var.env,count.index)}"
  project_id      = "${var.project_name}-${element(var.env,count.index)}"
  folder_id       = "${google_folder.gcp_folder.name}"  
  billing_account =  "${var.bill_account_id}" 
}

resource "google_project_services" "gcp_project_services" {
  count    = "${length(google_project.gcp_project.*.project_id)}"
  project  = "${element(google_project.gcp_project.*.project_id,count.index)}"
  services = ["${var.api_services}"]
}
