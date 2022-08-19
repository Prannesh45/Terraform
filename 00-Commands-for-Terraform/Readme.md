<h3 align="center"><b>Commands for Terraform</b></h3>


<p>When you play with Terraform, you should be aware of 5 commands, your whole script will revolve around it</p>


<h3>1. Package initialisation</h3>

```
terraform init
```

This is the command which you will use when you finish writing the script. When you run this command, the mentioned type in resource bloack will call its API to fetch the necessary details.

<h3>2. Validation</h3>

```
terraform validate
```

Validates the Terraform file and prints if any necessary fields are missed or if any mentioend resource type is unavailable

<h3>3. Plan/Verify</h3>

```
terraform plan
```

The command which you will use often when you update the script. Using this command, you can get to know what your script is about to screate, what are the resource which will be allocated, its features and its types

<h3>4. Apply</h3>

```
terraform apply
```

After planning, This deploys and runs the script. This should be used only after ```terraform plan```  so it calls the API and the resources which is fetched in ```terraform init``` and deploys the script.


<h3>5. Destroy</h3>

```
terraform destroy
```

This command is used to destroy(delete) every resource which is created in ```terraform apply```.


<h3><b>Bonus</b></h3>

```terrafrom fmt``` - This command is used to Format the terraform Script
