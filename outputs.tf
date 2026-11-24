## ----------------------------------------------------------------------------
## Copyright 2026 Raring Group LLC
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
## ----------------------------------------------------------------------------

output "name" {
  value       = join("", aws_iam_role.default.*.name)
  description = "The name of the IAM role created"
}

output "id" {
  value       = join("", aws_iam_role.default.*.unique_id)
  description = "The stable and unique string identifying the role"
}

output "arn" {
  value       = join("", aws_iam_role.default.*.arn)
  description = "The Amazon Resource Name (ARN) specifying the role"
}

output "policy" {
  value       = join("", data.aws_iam_policy_document.default.*.json)
  description = "Role policy document in json format. Outputs always, independent of `enabled` variable"
}

output "instance_profile" {
  description = "Name of the ec2 profile (if enabled)"
  value       = join("", aws_iam_instance_profile.default.*.name)
}