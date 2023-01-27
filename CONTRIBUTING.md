# Contributing to illumidesk-cloud

## Requirements

1. [install pre-commit](https://pre-commit.com/)
2. configure pre-commit: `pre-commit install`
3. install required tools
    - [tflint](https://github.com/terraform-linters/tflint)
    - [tfsec](https://aquasecurity.github.io/tfsec/v1.0.11/)
    - [terraform-docs](https://github.com/terraform-docs/terraform-docs)
    - [golang](https://go.dev/doc/install) (for macos you can use `brew`)
    - [coreutils](https://www.gnu.org/software/coreutils/)

Write code according to [I&A module standards](https://aws-ia.github.io/standards-terraform/)

## Module Documentation

**Do not manually update README.md**. `terraform-docs` is used to generate README files. For any instructions an content, please update [.header.md](./.header.md) then simply run `terraform-docs ./` or allow the `pre-commit` to do so.

## Terratest

Please include tests to validate your examples/<> root modules, at a minimum. This can be accomplished with usually only slight modifications to the [boilerplate test provided in this template](./test/examples\_basic\_test.go)

### Configure and run Terratest

1. Install

    [golang](https://go.dev/doc/install) (for macos you can use `brew`)

2. Change directory into the test folder.

    `cd test`

3. Initialize your test

    go mod init github.com/[github_org]/[repo_name]

    For example:

    `go mod init github.com/illumidesk/illumidesk-cloud`

4. Run tidy

    `git mod tidy`

5. Install Terratest

    `go get github.com/gruntwork-io/terratest/modules/terraform`

6. Run test (You can have multiple test files).
    - Run all tests

        `go test`

    - Run a specific test with a timeout

        `go test -run TestExamplesBasic -timeout 45m`


## Continuous Integration

The I&A team uses AWS CodeBuild to perform continuous integration (CI) within the organization. Our CI uses the a repo's `.pre-commit-config.yaml` file as well as some other checks. All PRs with other CI will be rejected. See our [FAQ](https://aws-ia.github.io/standards-terraform/faq/#are-modules-protected-by-ci-automation) for more details.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0, < 5.0.0 |
| <a name="requirement_awscc"></a> [awscc](#requirement\_awscc) | >= 0.24.0 |
