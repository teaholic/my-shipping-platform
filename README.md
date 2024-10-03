# My Shipping Platform

## In this repo
This repo includes:
* A bird-eye-view on Infrastructure as Code (IaC) with terraform, 
* an example of test-driven development (TDD) with terraform.

## How to run the example
```bash
cd my-shipping-platform/example
terraform init
terraform validate
terraform plan
```

## How to run tests
```bash
cd my-shipping-platform/tests
terraform init
terraform test
```

## Resources
About *testing and linting with terraform*:
- https://developer.hashicorp.com/terraform/cli/commands/validate
- https://developer.hashicorp.com/terraform/cli/test
- https://developer.hashicorp.com/terraform/tutorials/configuration-language/test
- https://developer.hashicorp.com/terraform/language/values/outputs#custom-condition-checks

About *Test Driven Development* (TDD):
- https://martinfowler.com/bliki/TestDrivenDevelopment.html
- https://tidyfirst.substack.com/p/tdd-prerequisites
- https://xp123.com/3a-arrange-act-assert/