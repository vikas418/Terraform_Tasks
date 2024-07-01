
# Assignment 01 📘

## Infrastructure as a Code
### Task Description
- Create the following resources using terraform resource block :
    - Create 1 VPC
        - eg : `ninja-vpc-01`
    - Create 4 Subnet
        - 2 public subnet
            - eg : `ninja-pub-sub-01/02`
        - 2 private subnet
            - eg : `ninja-priv-sub-01/02`
    - Create instances in it ( bastion and private instance)
    - Create 1 IGW
        - eg : `ninja-igw-01`
    - Create 1 NAT
        - eg : `ninja-nat-01`
    - Create 2 Route Table
        - 1 for public subnet
            - eg : `ninja-route-pub-01/02`
        - 1 for private subnet
            - eg : `ninja-route-priv-01/02`
**Note: Make maximum use of variables and output files**

# 🛠 ImpleMentation :-

## Command : 
~~~
terraform init
~~~

![Terraform_init](https://github.com/vikas418/Terraform_Tasks/assets/149520276/855b05a7-519e-4798-aa9d-c72205f084fb)


## Terraform plan
## Command : 
~~~
terraform plan
~~~

![Terraform plan](https://github.com/vikas418/Terraform_Tasks/assets/149520276/7e7f8acb-e59c-4ffb-8ac5-a2c15d713254)


## Terraform apply
## Command : 
~~~
terraform apply --auto-approve
~~~

![Code-Output](https://github.com/vikas418/Terraform_Tasks/assets/149520276/5524763e-1e9d-436a-a854-4f63263a5c46)


## Created Infra :-
## -  ☁️ **Created VPC** (ninja-vpc)👍
![VPC-TF](https://github.com/vikas418/Terraform_Tasks/assets/149520276/78e499f8-b23d-41ec-8140-d97fc57d63d5)

## - 🌐 **Created Subnet** (ninja-pub-sub-01) (ninja-pub-sub-02) 👍
![Subnets](https://github.com/vikas418/Terraform_Tasks/assets/149520276/4c2ab5ac-eb07-4d74-b238-640272ccdf63)


### - 🌐 **Created IGW Gateway** (ninja-IGW) 👍
![ninja-IGW](https://github.com/vikas418/Terraform_Tasks/assets/149520276/7b4289f5-5f0c-44e9-a0e2-54fc9276ffc7)


### - 🌐 **Created NAT Gateway** (ninja-NAT) 👍
![ninja-NAT](https://github.com/vikas418/Terraform_Tasks/assets/149520276/5bee5c13-49b2-446c-a20a-15b91847693c)


### - 🛣️ **Created Route Table** (ninja-pri-rt)👍

![ninja-pri-RT](https://github.com/vikas418/Terraform_Tasks/assets/149520276/ceb7e042-fc00-4294-a5c5-c0f7fedc26d7)

### - 🛣️ **Created Route Table** (ninja-pub-rt)👍

![ninja-pub-RT](https://github.com/vikas418/Terraform_Tasks/assets/149520276/77cf3ded-c066-4645-8c58-a006334c48fc)


## - 🖥️ **Created Instance** (bastion and private server) 👍
![EC2-Servers](https://github.com/vikas418/Terraform_Tasks/assets/149520276/fb658248-b929-42fd-b408-dea70264b0fd)



## ✍️ Author :copyright:

- [Vikas Bandi](https://github.com/vikas418)
