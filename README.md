**Author:** Juan Vicente Herrera Ruiz de Alejo  
**Role:** Professor at ICAI


## OpenTofu GKE Deployment

This repository contains OpenTofu (Terraform fork) code to deploy a basic infrastructure on Google Cloud Platform (GCP), which includes:

- A Kubernetes cluster (GKE)
- A storage bucket (Google Cloud Storage)

### File Structure

- **main.tf**: Defines the main resources (GKE cluster, node pool, and bucket).
- **variables.tf**: Input variables (project name, region, zone, cluster name, node count and type, bucket name, etc.).
- **outputs.tf**: Useful outputs such as the cluster name, endpoint, and bucket URL.
- **providers.tf**: Google provider configuration and credentials.

### Main Resources

#### 1. GKE Cluster
Creates a Kubernetes cluster in GCP with parameters defined in the variables. The node pool is configured separately for flexibility.

#### 2. Node Pool
Defines the node group for the cluster, allowing you to adjust the size and machine type.

#### 3. Storage Bucket
Creates a Google Cloud Storage bucket with versioning and uniform bucket-level access enabled.

### Main Variables

- `gcp-project`: GCP project.
- `gcp-region`: Region where resources will be deployed.
- `gcp-zone`: Zone for the cluster and node pool.
- `gcp-cluster-name`: Name of the GKE cluster.
- `gcp-node-count`: Number of nodes in the node pool.
- `gcp-node-size`: Machine type for the nodes.
- `gcp-bucket-name`: Name of the storage bucket.

### Outputs

- `gcp-cluster-name`: Name of the created cluster.
- `kubernetes_endpoint`: Endpoint of the Kubernetes cluster.
- `gcp-bucket-url`: URL of the created bucket.

### Usage

1. Configure your GCP credentials and adjust the variables as needed in `variables.tf` or by using a `terraform.tfvars` file.
2. Initialize the environment:
   ```sh
   tofu init
   ```
3. Preview the changes:
   ```sh
   tofu plan
   ```
4. Apply the infrastructure:
   ```sh
   tofu apply
   ```


### Requirements

- [OpenTofu](https://opentofu.org/) >= 1.6 (compatible with Terraform >= 1.0)
- Access to a GCP project and credentials with sufficient permissions
- Enable the Kubernetes Engine and Cloud Storage APIs in GCP


