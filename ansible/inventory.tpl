[windows]
{{ vm_ip }}

[windows:vars]
ansible_user={{ admin_username }}
ansible_password={{ admin_password }}
ansible_connection=winrm
ansible_winrm_transport=basic
ansible_winrm_server_cert_validation=ignore

