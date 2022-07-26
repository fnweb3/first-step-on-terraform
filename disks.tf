resource "azurerm_managed_disk" "disk" {
  name                 = "${azurerm_windows_virtual_machine.vm.name}-disk1"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 120
  tags = var.tags
}

resource "azurerm_virtual_machine_data_disk_attachment" "diskattach" {
  managed_disk_id    = azurerm_managed_disk.disk.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm.id
  lun                = "10"
  caching            = "ReadWrite"
}