# Terraform Commands Cheat Sheet

This markdown file provides a list of common Terraform commands, their purposes, and clear examples for each.

---

## 1. Initialize Terraform

**Command:**
```
terraform init
```
**Purpose:** Initializes the working directory containing Terraform configuration files.

---

## 2. Validate Configuration

**Command:**
```
terraform validate
```
**Purpose:** Validates the syntax and internal consistency of Terraform files.

---

## 3. Format Configuration Files

**Command:**
```
terraform fmt
```
**Purpose:** Formats Terraform files to canonical style.

---

## 4. Plan Infrastructure Changes

**Command:**
```
terraform plan
```
**Purpose:** Shows what actions Terraform will take to achieve the desired state.

**Example:**
```
terraform plan -var "application_name=myapp" -var "environment_name=dev"
```

---

## 5. Apply Changes

**Command:**
```
terraform apply
when want to pass the value to input variables - terraform apply -var "application_name=test" -var "environment_name=tes"
when want to pass the different env file value to input variables -  terraform apply -var-file prod.tfvars
```
**Purpose:** Applies the planned changes to your infrastructure.

**Example:**
```
terraform apply -var "application_name=myapp" -var "environment_name=dev"
```

---

## 6. Destroy Infrastructure

**Command:**
```
terraform destroy
```
**Purpose:** Destroys all resources managed by Terraform.

**Example:**
```
terraform destroy -auto-approve
```

---

## 7. Show Current State

**Command:**
```
terraform show
```
**Purpose:** Displays the current state of the infrastructure.

---

## 8. Output Values

**Command:**
```
terraform output
```
**Purpose:** Shows output values from the state file.

---

## 9. List Resources

**Command:**
```
terraform state list
```
**Purpose:** Lists all resources in the current state.

---

## 10. Remove Resource from State

**Command:**
```
terraform state rm <resource_name>
```
**Purpose:** Removes a resource from the state file (does not destroy the actual resource).

---

## 11. Import Existing Resource

**Command:**
```
terraform import <resource_type>.<resource_name> <id>
```
**Purpose:** Imports an existing resource into Terraform state.

**Example:**
```
terraform import aws_instance.example i-1234567890abcdef0
```

---

## 12. Graph Dependencies

**Command:**
```
terraform graph
```
**Purpose:** Generates a visual graph of Terraform resources and their dependencies.

---

## 13. Workspace Management

**Command:**
```
terraform workspace list
terraform workspace new <name>
terraform workspace select <name>
```
**Purpose:** Manages multiple workspaces for different environments.

---

## 14. Force Unlock State

**Command:**
```
terraform force-unlock <lock_id>
```
**Purpose:** Manually unlocks the state file if locked.

---

## 15. Version Information

**Command:**
```
terraform version
```
**Purpose:** Shows the installed Terraform version.

---

## 16. Help

**Command:**
```
terraform help
```
**Purpose:** Shows help for Terraform commands.

---

> For more details, refer to the [Terraform documentation](https://www.terraform.io/docs/index.html).
