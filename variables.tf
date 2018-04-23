variable "name" {
  description = "The name of the node pool."
  type        = "string"
}

variable "zone" {
  description = "The zone in which the cluster resides."
  type        = "string"
}

variable "cluster" {
  description = "The cluster name to create the node pool for."
  type        = "string"
}

# ----------------------------------------------------------------------------------------------------------------------
# Cluster Autoscale.
#
# https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-autoscaler
# ----------------------------------------------------------------------------------------------------------------------

variable "min_node_count" {
  description = "Minimum number of nodes"
  type        = "string"
  default     = "1"
}

variable "max_node_count" {
  description = "Maximum number of nodes"
  type        = "string"
  default     = "1"
}

# ----------------------------------------------------------------------------------------------------------------------
# Node management configuration.
# ----------------------------------------------------------------------------------------------------------------------

variable "auto_repair" {
  # https://cloud.google.com/kubernetes-engine/docs/concepts/node-auto-repair
  description = "Sets Auto-Repair feature. More info here: https://cloud.google.com/kubernetes-engine/docs/concepts/node-auto-repair"
  type        = "string"
  default     = "false"
}

variable "auto_upgrade" {
  # https://cloud.google.com/kubernetes-engine/docs/concepts/node-auto-upgrades
  description = "Sets Auto-Upgrade feature. See https://cloud.google.com/kubernetes-engine/docs/node-managament for more info."
  type        = "string"
  default     = "false"
}

# ----------------------------------------------------------------------------------------------------------------------
# Node config
# ----------------------------------------------------------------------------------------------------------------------

variable "machine_type" {
  description = "Google Compute Engine machine type"
  type        = "string"
  default     = "n1-standard-1"
}

variable "disk_size_gb" {
  description = "Size of the disk attached to each node"
  type        = "string"
  default     = "100"
}

variable "preemptible" {
  # https://cloud.google.com/kubernetes-engine/docs/concepts/preemptible-vm
  description = "Whether or not the underlying node VMs are preemptible"
  type        = "string"
  default     = "false"
}

variable "tags" {
  description = "Instance tags applied to all nodes to identify valid sources or targets for network firewalls."
  type        = "list"
  default     = []
}

variable "labels" {
  description = "The Kubernetes labels (key/value pairs) to be applied to each node"
  type        = "map"
  default     = {}
}

variable "taint" {
  # https://cloud.google.com/kubernetes-engine/docs/how-to/node-taints
  description = "Kubernetes taints to apply to each node"
  type        = "list"
  default     = []
}
