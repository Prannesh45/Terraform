
<h3><b>Terraform</b></h3>


<p>Terraform is one of the most popular Infrastructure-as-a-code (IaaC) tool which is often used by DevOps and System team right from Provisioning Cluster until management. </p>


<p>It is an open source tool developed by HashiCorp with the main motive of automative cloud and system Provision</p>
 <p>As Terraform being an open source tool, itd widely used in both on-premises and cloud appliances right from provisioning cluters, to automating daiy tasks to managing and monitoring instances</p>

To read more about the what Terraform is, check out the attached [link](https://www.terraform.io/intro)


<h2><b>Installation of Terraform</b></h2>

<h3><b>MacOS installation</b></h3>

```
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform
```

<h3><b>CentOS installation</b></h3>

```
$ sudo yum install -y yum-utils
$ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
$ sudo yum -y install terraform
```

<h3><b>Amazon Linux installation</b></h3>

```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
```

<h3><b>Windows installation</b></h3>

Installers: [386](https://github.com/Prannesh45/Terraform/blob/main/01-Introduction-and-Installation-of-Terraform/terraform_386.exe)    [AMD](https://github.com/Prannesh45/Terraform/blob/main/01-Introduction-and-Installation-of-Terraform/terraform_amd.exe)

1. Download the installer from the mentioned link
2. Drag and Drop the Installer

<h3><b>Installation Check</b></h3>

1. Open the Terminal or Command Prompt and enter  ```terraform --version``` , it should print out the installed version similar to mentioned output

```
Terraform v1.0.4
on darwin_amd64

Your version of Terraform is out of date! The latest version
is 1.1.9. You can update by downloading from https://www.terraform.io/downloads.html
```

The other different types of Installers can be found here: [Link](https://www.terraform.io/downloads)
