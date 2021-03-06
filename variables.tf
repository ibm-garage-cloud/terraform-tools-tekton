
# Cluster Variables
variable "cluster_type" {
  type        = string
  description = "The type of cluster that should be created (openshift or ocp3 or ocp4 or kubernetes)"
}

variable "cluster_config_file_path" {
  type        = string
  description = "The path to the config file for the cluster"
}

variable "cluster_ingress_hostname" {
  type        = string
  description = "Ingress hostname of the IKS cluster."
}

variable "tools_namespace" {
  type        = string
  description = "The namespace where tools are installed"
}

variable "tekton_dashboard_version" {
  type        = string
  description = "The tekton dashboard version to install"
  default     = "v0.7.1"
}

variable "tekton_dashboard_namespace" {
  type        = string
  description = "The tekton dashboard version to install"
  default     = "openshift-pipelines"
}

variable "tekton_dashboard_yaml_file_ocp" {
  type        = string
  description = "The tekton dashboard yaml file for the release for openshift"
  default     = "openshift-tekton-dashboard-release.yaml"
}

variable "tekton_dashboard_yaml_file_k8s" {
  type        = string
  description = "The tekton dashboard yaml file for the release for kubernetes"
  default     = "tekton-dashboard-release.yaml"
}

variable "olm_namespace" {
  type        = string
  description = "Namespace where olm is installed"
  default     = ""
}

variable "operator_namespace" {
  type        = string
  description = "Namespace where operators will be installed"
  default     = ""
}

variable "gitops_dir" {
  type        = string
  description = "Directory where the gitops repo content should be written"
  default     = ""
}

variable "mode" {
  type        = string
  description = "The mode of operation for the module (setup)"
  default     = ""
}

variable "provision" {
  type        = bool
  description = "Flag indicating that Tekton should be provisioned"
  default     = true
}
