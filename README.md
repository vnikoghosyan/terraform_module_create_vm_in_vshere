# Terraform Module for creating Virtual Machines in vSphere.

# Kubernetes Environment Setup with Terraform and Ansible

This project provides a comprehensive guide to setting up a Kubernetes environment using Terraform to create VMs in vSphere and Ansible for configuration management. It includes instructions for installing necessary tools, configuring the cluster, and deploying applications.

## Prerequisites

- Docker
- kubectl
- Terraform
- Ansible
- vSphere environment

## Installation

1. **Install Docker**: Follow the instructions on the [Docker website](https://docs.docker.com/get-docker/).
2. **Install kubectl**: Follow the instructions on the [Kubernetes website](https://kubernetes.io/docs/tasks/tools/install-kubectl/).
3. **Install Terraform**: Follow the instructions on the [Terraform website](https://learn.hashicorp.com/tutorials/terraform/install-cli).
4. **Install Ansible**: Follow the instructions on the [Ansible website](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

## Setup

1. **Configure Terraform variables**: Set the necessary variables in the `terraform.tfvars` file located in the environment-specific directory (e.g., `environments/dev/terraform.tfvars`).
2. **Initialize Terraform**:
    ```sh
    cd environments/<your-environment>
    terraform init
    ```

3. **Apply Terraform configuration**:
    ```sh
    terraform apply
    ```

4. **Generate `hosts.ini` for Ansible**: Terraform will automatically generate the `hosts.ini` file for further Ansible configuration.

5. **Run Ansible playbook**:
    ```sh
    ansible-playbook -i hosts.ini setup.yml
    ```

## Usage

- **Check the status of the cluster**:
    ```sh
    kubectl get nodes
    ```

- **View deployed services**:
    ```sh
    kubectl get services
    ```

- **Access the application**:
    ```sh
    kubectl port-forward svc/<service-name> <local-port>:<service-port>
    ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, please contact [Vardan](mailto:vardan@example.com).


