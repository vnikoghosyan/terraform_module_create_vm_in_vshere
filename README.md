# Terraform Module for creating Virtual Machines in vSphere.
This project provides a comprehensive guide to create VMs in vSphere for different environments using Terraform Module and path-based approach for environments.
The execution of ```terraform apply``` command in each environment directory will also generate a ```hosts.ini``` file in a directory dedicated for further Ansible setup for configuration.

## Prerequisites

- Terraform
- vSphere environment

## Installation

1. **Install Terraform**: Follow the instructions on the [Terraform website](https://learn.hashicorp.com/tutorials/terraform/install-cli) or better use [TFSwitch](https://tfswitch.warrensbox.com/) to install Terraform
4. **Install Ansible**: Follow the instructions on the [Ansible website](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

## Setup

1. **Configure Terraform variables**: Set the necessary variables in the `terraform.tfvars` file located in the environment-specific directory (e.g., `environments/<env>/terraform.tfvars`).
2. **Initialize Terraform**:
    ```sh
    cd environments/<env>
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

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## Contact

For any questions or feedback, please contact [Vardan](mailto:vnikoghosyan@gmail.com).


