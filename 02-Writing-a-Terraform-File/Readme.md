<h3 align="center"><b>First Terraform Script</b></h3>


```

# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }


provider "aws" {
  region = "us-east-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-KEY"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0f9fc25dd2506cf6d"
  instance_type = "t2.micro"
}

```

<h3>Terraform Code always revolves around two Blocks</h3>

1. Providers
2. Resources

<h3>What is Providers ?</h3>

Providers are similar to plugins in Web Browsers. They are the main source of interaction between our script and the API to 3rd party resources like Aazure, AWS, 0Auth and so on. 

From the latest release(1.1.3) of Terraform, 3 main features are handled in Providers

1. Source - From where you are fetching this resource (It can be from Hashicorp or any 3rd part resources)
2. Version - Type of version which is compatible to your script
3. Type - Provider Name


<h3>What is Resource ?</h3>

Resource are the components of Providers. In Resources, you specify every details what is needed while provisioning. 

**Example: ** 

I want a AWS EC2 instance to be launched. To launch an instance in AWS console GUI, we will need to minimum 3 pre-requisites 
1. Instance name
2. Region where we want EC2 to be launched
3. Instance Type - Micro or Medium or Large


These pre-requisites will be handled in Resources where we modify the scripts according to preference


<h2><b>Lets dive a bit deeper &#8595;</b></h2>

<h3>Resulting Output </h3>

I want to know the configurations and dependencies which is allocated for the resource, here its AWS

These aspects can be handled under **OUTPUT** block where you result the inputs by calling the name of the resource


```
provider "aws" {
  region     = "us-west-2"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-KEY"
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "mys3" {
  bucket = "prannesh-demo"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket
}
```
