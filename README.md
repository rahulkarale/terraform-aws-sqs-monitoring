# Project Name

## Overview

This project automates the setup of environments on AWS using Terragrunt. By leveraging infrastructure as code principles, it provides a consistent and reproducible way to create and manage environments.

## Features

- **Infrastructure as Code (IaC):** Define infrastructure using code, making it version-controlled and easily reproducible.
- **Modular Structure:** Organize infrastructure components into reusable modules for better maintainability.
- **Environment Management:** Easily create, manage, and tear down environments for different stages of development, testing, and production.
- **AWS Integration:** Seamlessly integrates with AWS services for provisioning resources.

## Current Implementation

- **Created SQS resource module with default alerts using cloudwatch alarms.**
- **Intervention of a user is not required to create alerts with default values.**
- **User can override the thresholds according to use-case.**
- **Base on different team use different sns-topic to send alerts to specific team.**
- **Cross-Region functionality is not supported for alarms.** [AWS-DOC](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#:~:text=cross%2Daccount%20dashboards.-,Cross%2DRegion%20functionality,-Cross%2DRegion%20functionality)

## Prerequisites

Before getting started, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)
- AWS CLI configured with necessary credentials and permissions

## Getting Started

Follow these steps to set up your environment:

1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Initialize Terragrunt:**

    ```bash
    terragrunt init
    ```
3. **Run Terragrunt Plan to review resource creation:**

    ```bash
   terragrunt plan
    ```
4. **Create Resource after reviewing plan:**
    ```bash
   terragrunt apply
   ```
5. **Clean-up the resources:**
    ```bash
   terragrunt destroy
    ```