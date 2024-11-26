virtual_machines = {
  "vm-1" = {
    vm_name   = "nginx0"                      # Имя ВМ
    vm_desc   = "Проксирующий Nginx"          # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-nginx0"               # Название диска
    template  = "fd837neerofcjnk6sksg"        # ID образа ОС для использования
  },
  "vm-2" = {
    vm_name   = "nginx1"                      # Имя ВМ
    vm_desc   = "Mediawiki первая машина"     # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-nginx1"               # Название диска
    template  = "fd837neerofcjnk6sksg"        # ID образа ОС для использования
  },
  "vm-3" = {
    vm_name   = "nginx2"                      # Имя ВМ
    vm_desc   = "Mediawiki вторая машина"     # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-nginx2"               # Название диска
    template  = "fd837neerofcjnk6sksg"        # ID образа ОС для использования
  }
  "vm-4" = {
    vm_name   = "db1"                         # Имя ВМ
    vm_desc   = "Postgresql master"           # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-db1"                  # Название диска
    template  = "fd837neerofcjnk6sksg"        # ID образа ОС для использования
  },
  "vm-5" = {
    vm_name   = "db2"                         # Имя ВМ
    vm_desc   = "Postgresql slave"            # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-db2"                  # Название диска
    template  = "fd837neerofcjnk6sksg"        # ID образа ОС для использования
  },
  "vm-6" = {
    vm_name   = "db3"                         # Имя ВМ
    vm_desc   = "Postgresql slave"            # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-db3"                  # Название диска
    template  = "fd837neerofcjnk6sksg"        # ID образа ОС для использования
  },
  "vm-7" = {
    vm_name   = "zabbix"                      # Имя ВМ
    vm_desc   = "Мониторинг Zabbix,Backup"    # Описание
    vm_cpu    = 2                             # Кол-во ядер процессора
    ram       = 2                             # Оперативная память в ГБ
    disk      = 10                            # Объём диска в ГБ
    disk_name = "ubuntu-zb"                   # Название диска
    template  = "fd81id4ciatai2csff2u"        # ID образа ОС для использования
  }
}
