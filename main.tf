resource "google_container_node_pool" "node_pool" {
  name               = "${var.name}"
  zone               = "${var.zone}"
  cluster            = "${var.cluster}"
  initial_node_count = "${var.min_node_count}"

  autoscaling {
    min_node_count = "${var.min_node_count}"
    max_node_count = "${var.max_node_count}"
  }

  management {
    auto_repair  = "${var.auto_repair}"
    auto_upgrade = "${var.auto_upgrade}"
  }

  node_config {
    machine_type = "${var.machine_type}"
    disk_size_gb = "${var.disk_size_gb}"
    preemptible  = "${var.preemptible}"
    labels       = "${var.labels}"
    tags         = "${var.tags}"
    taint        = "${var.taint}"
  }
}
