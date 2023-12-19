foreach ($f in $(Get-ChildItem -Path /usr/local/lib/python3.11/site-packages/ansible/module_utils/powershell/ | Where-Object {$_.Name -match "Ansible*"})){

    $base_name = $f.Name.Split(".psm1")[0]

    mkdir /root/.local/share/powershell/Modules/$base_name

     ln -s /usr/local/lib/python3.11/site-packages/ansible/module_utils/powershell/$($f.Name) /root/.local/share/powershell/Modules/$($base_name)/$($f.Name)

}

