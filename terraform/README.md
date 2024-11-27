# MinIO Terraform Demo

This repository is meant to demonstrate MinIO + Terraform.

Terraform code is written to target the Docker Compose project that is hosted in the directory above this README.

# Terraform Code Structure

The modules featured inside of the `terraform` directory offer 4 control mechanisms:

| Mechanics | Description |
| - | - |
| User Mapping Schema | Contained within `01-user-mappings.json` |
| Bucket Schema | Container within `02-buckets-data.json` |
| Locals Formatting | `locals.tf` file contains data formatted data. Optimized for use with modules. |
| Terraform Policy Documents | MinIO policies formatted using Terraform document formatting |

# How To Modify MinIO Environment

To administer the MinIO cluster hosted by the Docker Compose project, please see the following instructions

#### For Additional users

Please edit the `01-user-mappings.json` with respective groups and users

#### For Additional buckets

Please edit the `02-buckets-data.json` with respective bucket info

#### For Policies

Please edit the `group-policies.tf` file with respective policy documents.
Once complete, edit `local.tf` to create a policy object that references new policies which have been added to `group-policies.tf`

# Code Samples

#### New Policy Example

Below is an example of a policy document that can be added to `group-policies.tf`

```go
data "minio_iam_policy_document" "eng_policy" {
  statement {
    sid = "1"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }

  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      "arn:aws:s3:::state-terraform-s3",
    ]

    condition {
      test     = "StringLike"
      variable = "s3:prefix"

      values = [
        "",
        "home/",
      ]
    }
  }

  statement {
    actions = [
      "s3:PutObject",
      "s3:DeleteObject"
    ]

    resources = [
      "arn:aws:s3:::state-terraform-s3",
      "arn:aws:s3:::state-terraform-s3/*",
    ]
  }
}
```