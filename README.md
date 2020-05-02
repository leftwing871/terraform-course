# terraform-course.
* Terraform Version : 0.11.11
* Orignal Source form : [https://github.com/wardviaene/terraform-course](https://github.com/wardviaene/terraform-course) for  [Udemy course about Terraform](https://www.udemy.com/learn-devops-infrastructure-automation-with-terraform/?couponCode=TERRAFORM_GIT)
* Update by Steve J.South [NamJungGu] <nowage@gmail.com>

# Todo
* 모든 실행 zone을 ap-northeast-2로 옮기기, 단, AMI b존에서 작동하는 것으로 바꿀 것.

# Demo overview
Demo Directory                                  | Description
------------------------------------------------| -------------
01-FirstSteps                                   | First steps
02-FirstStepsEC2-basic                          | First steps: Launching an EC2 instance - Simple Version
03-FirstStepsEC2                                | First steps: Launching an EC2 instance
04-Provisioner-basic                            | Using provisioner - Simple Version
05-Provisioner                                  | Using provisioner
06-ExecutingScriptLocally                       | Executing script locally
07-Outputting                                   | Outputting
08-DataSource                                   | Data Source
09-Modules                                      | Modules
10-AwsVpc                                       | AWS VPC
11-Ec2VpcSecuritygroup                          | EC2 instance within VPC with securitygroup
12-Ec2EBS                                       | EC2 instance with EBS volumes
13-UserdataAndCloudinit                         | Userdata and cloudinit
14-Route53                                      | Route53 (DNS)
15-RDS                                          | RDS
16-IAM                                          | IAM
17-IAMRolesWithS3Bucket                         | IAM Roles with S3 bucket
18-Autoscaling                                  | Autoscaling
19-AutoscalingWithELB                           | Autoscaling with ELB (Elastic Load Balancer)
20-ElasticBeanstalk                             | Elastic Beanstalk PHP 7 stack with RDS
21-InterpolationsVPCModule                      | Interpolations, VPC module
22-ProjectStructure                             | Project structure, best practices
23-packer                                       | Build AMIs with Packer
24-jenkins-packer                               | Demo with jenkins and Packer
c1-EKS                                          | Demo with EKS
c2-UsingProvisionerOnWindowsInstance            | Using provisioner on a Windows instance
c3-docker_local                                 | Using Local Docker 
c4-docker_EcrContainerRegistry                  | Using ECR - The EC2 Container Registry
c5-docker_EcsContainerService                   | Using ECS - The EC2 Container Service
c6-docker_EcrEcsWithJenkinsInACompleteWorkflow  | Using ECR/ECS with Jenkins in a complete workflow
c7-module2                                      | Using ECS + ALB in 4 modules to show how developing terraform modules work





## Old Chapter to New Chapter
OLD                  | NEW
---------------------|------------------------------------------
FirstSteps           |  01-FirstSteps              
demo-1b              |  02-FirstStepsEC2-basic          
demo-1               |  03-FirstStepsEC2         
demo-2               |  04-Provisioner-basic         
demo-2               |  05-Provisioner         
demo-3               |  06-ExecutingScriptLocally         
demo-4               |  07-Outputting         
demo-5               |  08-DataSource         
demo-6               |  09-Modules         
demo-7               |  10-AwsVpc         
demo-8               |  11-Ec2VpcSecuritygroup         
demo-9               |  12-Ec2EBS         
demo-10              |  13-UserdataAndCloudInit          
demo-11              |  14-Route53          
demo-12              |  15-RDS          
demo-13              |  16-IAM          
demo-14              |  17-IAMRolesWithS3Bucket          
demo-15              |  18-Autoscaling          
demo-16              |  19-AutoscalingWithELB          
demo-17              |  20-ElasticBeanstalk          
demo-18              |  21-InterpolationsVPCModule          
demo-18b             |  22-ProjectStructure           
packer-demo          |  23-packer                      
jenkins-packer-demo  |  24-jenkins-packer                       
eks-demo             |  c1-EKS                       
demo-2b              |  c2-UsingProvisionerOnWindowsInstance          
dockerdemo-0         |  c3-docker_local               
dockerdemo-1         |  c4-docker_EcrContainerRegistry               
dockerdemo-2         |  c5-docker_EcsContainerService               
dockerdemo-3         |  c6-docker_EcrEcsWithJenkinsInACompleteWorkflow               
module-demo          |  c7-module2                                                             










