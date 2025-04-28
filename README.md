# jenkins-java-app

In this project, I'll set up a Jenkins Continuous Integration/Continuous Deployment (CI/CD) pipeline on an AWS EC2 free-tier instance. The pipeline will build a Java application, create a Docker image, and push it to Amazon Elastic Container Registry (ECR).

Prerequisites:
- An AWS account with access to the free tier.
- Basic knowledge of Java, Docker, and AWS services.

Project Steps:
1. Launch an AWS EC2 Instance:
- Log in to your AWS Management Console.
- Navigate to the EC2 dashboard and click on “Launch Instance.”
- Select the Amazon Linux 2 AMI (free-tier eligible).
- Choose the t2.micro instance type.
- Configure instance details, add storage, and configure security groups to allow SSH (port 22) and Jenkins (port 8080).
- Review and launch the instance, creating a new key pair or using an existing one for SSH access.
Detailed guide: https://geeksforgeeks.org/install-and-configure-jenkins-in-aws-ec2/

2. Install Java and Jenkins:
- SSH into your EC2 instance using the key pair.
- Update the package manager and install OpenJDK.
- Add the Jenkins repository and install Jenkins.
- Start and enable the Jenkins service.

3. Configure Jenkins:
- Access Jenkins by navigating to http://<your-ec2-public-ip>:8080 in your browser.
- Retrieve the initial admin password from the specified file on your EC2 instance.
- Follow the setup wizard to install suggested plugins and create an admin user.

4. Install Required Plugins:
- In Jenkins, navigate to “Manage Jenkins” > “Manage Plugins.”
- Install the Amazon ECR plugin

5. Set Up AWS CLI and Configure Credentials:
- Install the AWS Command Line Interface (CLI) on your EC2 instance.
- Configure the AWS CLI with your AWS Access Key ID and Secret Access Key.

6. Create an Amazon ECR Repository:
- In the AWS Management Console, navigate to the ECR service.
- Create a new private repository to store your Docker images.
Reference: https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-push-ecr-image.html

7. Prepare Your Java Application:
- Ensure your Java application includes a Dockerfile for containerization.
• The Dockerfile should define the base image, copy application files, and specify the startup command.

8. Create a Jenkins Pipeline:
- In Jenkins, create a new Pipeline project.
- Define the pipeline script to:
- Clone your Java application repository.
- Build the Java application.
- Build the Docker image.
- Authenticate with Amazon ECR.
- Push the Docker image to the ECR repository.
Reference: https://fosstechnix.com/push-docker-image-to-aws-ecr-using-jenkins-pipeline/

9. Run and Monitor the Pipeline:
- Trigger the Jenkins pipeline build.
- Monitor the console output to ensure each stage completes successfully.
- Verify that the Docker image appears in your ECR repository.
