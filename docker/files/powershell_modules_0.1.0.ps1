###

# File: powershell_modules_0.1.0.ps1

# Created Date: 2023-05-26

# Author: Martin Bertolina

# -----

# Last Modified: Tue Dec 19 2023

# Modified By: Martin Bertolina

# -----

# Description:

###

$ErrorActionPreference = 'Stop'

$ProgressPreference = 'SilentlyContinue'

 

while(!(Test-Path -Path \$env:PSModuleAnalysisCachePath)) {

  Write-Host "'Waiting for $env:PSModuleAnalysisCachePath'" ;

  Start-Sleep -Seconds 6 ;

}

 

# [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13

 

 

Install-Module -Name VMware.PowerCLI          -Force -AcceptLicense -SkipPublisherCheck

# Install-Module -Name VMware.PowerCLI          -RequiredVersion 13.2.1.22851661 -Force -AcceptLicense -SkipPublisherCheck

Install-Module -Name VMware.vSphere.SsoAdmin  -RequiredVersion 1.3.9 -Force -AcceptLicense -SkipPublisherCheck

# Install-Module -Name HPEiLOCmdlets   -RequiredVersion 4.0.0.0         -AcceptLicense -SkipPublisherCheck -Force

# Install-Module -Name HPEBIOSCmdlets  -RequiredVersion 3.0.0.0         -AcceptLicense -SkipPublisherCheck -Force

# Install-Module -Name HPEOACmdlets    -RequiredVersion 2.0.0.0         -AcceptLicense -SkipPublisherCheck -Force

# Install-Module -Name HPEOneView.630  -RequiredVersion 6.30.3188.1900  -AcceptLicense -SkipPublisherCheck -Force

Install-Module -Name powershell-yaml          -RequiredVersion 0.4.7 -Force -AcceptLicense -SkipPublisherCheck

Install-Module -Name ImportExcel              -RequiredVersion 7.8.6 -Force -AcceptLicense -SkipPublisherCheck

Install-Module -Name Posh-SSH                 -RequiredVersion 3.1.1 -Force -AcceptLicense -SkipPublisherCheck

Install-Module -Name IdracRedfishSupport      -RequiredVersion 22.10.0.0 -Force -AcceptLicense -SkipPublisherCheck

Install-Module -Name VIPerms                  -RequiredVersion 0.0.6 -Force -AcceptLicense -SkipPublisherCheck

 

Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false -Confirm:$false

Set-PowerCLIConfiguration -InvalidCertificateAction:Ignore -Confirm:$false
