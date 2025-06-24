# Expense Architecture

![alt text](expense-infra-dev.drawio.svg)

# Infrastructure creation and deletion




```
for i in 01-vpc/ 02-sg/ 04-vpn/ 05-db/ 06-app-alb/ 07-backend/ 08-acm/ 09-web-alb/ 10-frontend/ 11-cdn/ ; do cd $i; terraform init -reconfigure; cd .. ; done 
```
```
for i in 01-vpc/ 02-sg/ 04-vpn/ 05-db/  06-app-alb/ 07-backend/ 08-acm/ 09-web-alb/ 10-frontend/ 11-cdn/ ; do cd $i; terraform plan; cd .. ; done 
```

```
for i in 01-vpc/ 02-sg/ 04-vpn/ ; do cd $i; terraform apply -auto-approve; cd .. ; done 
```

```
for i in 05-db/  06-app-alb/ 07-backend/ 08-acm/ 09-web-alb/ 10-frontend/ 11-cdn/ ; do cd $i; terraform apply -auto-approve; cd .. ; done 
```

```
for i in 01-vpc/ 02-sg/ 04-vpn/ 05-db/  06-app-alb/ 07-backend/ 08-acm/ 09-web-alb/ 10-frontend/ 11-cdn/ ; do cd $i; terraform apply -auto-approve; cd .. ; done 
```

```
for i in 11-cdn/ 10-frontend/ 09-web-alb/ 08-acm/ 07-backend/ 06-app-alb/ 05-db/ 04-vpn/  02-sg/ 01-vpc/ ; do cd $i; terraform destroy -auto-approve; cd .. ; done 
```




Note: We can use either default VPC subnet and its security group or roboshop VPC subnet or its security group.

#  default VPC subnet and its security group
    vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.value]
    subnet_id              = data.aws_subnet.selected.id

# roboshop VPC subnet or its security group
    vpc_security_group_ids = [data.aws_ssm_parameter.mongodb_sg_id.value]
    subnet_id              = local.database_subnet_id
