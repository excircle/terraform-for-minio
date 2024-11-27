# Example Terraform for Administering MinIO

A Docker Compose project designed to illustrate the examples of https://github.com/aminueza/terraform-provider-minio

#### BACKGROUND

This repository was meant to reflect one possible deployment strategy for administering MinIO Clusters using [https://github.com/aminueza/terraform-provider-minio](https://github.com/aminueza/terraform-provider-minio).

The Terraform code provided is built on (3) modules and (1) control module

- org-buckets (For creating Buckets)
- org-groups  (For creating Groups)
- org-users   (For creating Users)
- minio-org   (Calls other 3 modules)

# Instructions for Installation

The following instructions are written for use with an Apple Silicon Macbook, but can be modified to work on Linux.

### 1.) Ensure that Docker Desktop is installed

Docker Compose is required if you wish to use the dedicated MinIO environment

[CLICK HERE To Download Docker Desktop](https://docs.docker.com/desktop/setup/install/mac-install/)

### 2.) Run Makefile To Install Pre-Requisites

Run the following command to stage the directories required to run MinIO

```bash
make all
```

### 3.) Run Docker Compose

To run `docker compose` in detached mode, please run the following command:

```bash
docker compose up -d
```

# Instructions For Using Terraform

For specifics on using the above mentioned modules, please see the README file in `./terraform/`