resource "google_clouddeploy_custom_target_type_iam_policy" "clouddeploy_custom_target_type_iam_policies" {
  for_each = var.clouddeploy_custom_target_type_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

