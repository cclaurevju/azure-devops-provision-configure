provider "azurerm" {
}

resource "azurerm_resource_group" "rg" {
}

resource "azurerm_virtual_network" "vnet" {
}

resource "azurerm_subnet" "subnet" {
}

resource "azurerm_network_interface" "nic" {
}

resource "azurerm_public_ip" "pip" {
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                = "cclaurevju-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "ES-US"
  size                = "Standard_DS1_v2"
  admin_username      = "cclaurevju"
  admin_password      = "cclaurevjupass123"
  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  provision_vm_agent = true
}