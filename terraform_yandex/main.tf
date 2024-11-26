resource "yandex_compute_disk" "boot-disk" {
  for_each = var.virtual_machines
  name     = each.value["disk_name"]
  type     = "network-hdd"
  zone     = "ru-central1-a"
  size     = each.value["disk"]
  image_id = each.value["template"]
}

resource "yandex_vpc_network" "diplom" {
  name = "diplom"
}

resource "yandex_vpc_subnet" "diplom-sub" {
  name           = "diplom-sub"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.diplom.id
  v4_cidr_blocks = ["10.78.10.0/28"]
}

resource "yandex_compute_instance" "virtual_machine" {
  for_each = var.virtual_machines
  name     = each.value["vm_name"]
  allow_stopping_for_update = true
  
  resources {
    cores  = each.value["vm_cpu"]
    memory = each.value["ram"]
    core_fraction = 20
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.diplom-sub.id
    nat       = true
  }
  metadata = {
    ssh-keys = "s7079593:${file("~/.ssh/id_ed25519.pub")}"
    user-data = "#cloud-config \nusers:\n  - name: s7079593\n    groups: sudo\n    shell: /bin/bash\n    sudo: 'ALL=(ALL:ALL) NOPASSWD:ALL'"
    
  }
  scheduling_policy {
    preemptible = true
  }
}
