# Tailsec Homebrew Tap

[![Homebrew Test](https://github.com/tailsec-com/homebrew-tap/actions/workflows/tests.yml/badge.svg)](https://github.com/tailsec-com/homebrew-tap/actions/workflows/tests.yml)

Unofficial Homebrew tap for [Tailsec](https://tailsec.io) security scanners.

## Installation

```bash
brew install tailsec-com/tailsec/scan-k8s
```

Or tap first:

```bash
brew tap tailsec-com/tailsec
brew install scan-k8s
```

## Available Formulae

| Scanner | Description | Alias |
|---------|-------------|-------|
| scan-k8s | Kubernetes manifest scanner | - |
| scan-terraform | Terraform IaC scanner | scan-tf |
| scan-docker | Dockerfile scanner | - |
| scan-secrets | Secret detection scanner | - |
| scan-deps | Dependency vulnerability scanner | - |
| scan-license | License compliance scanner | - |
| scan-cfn | CloudFormation scanner | - |
| scan-sast | Advanced SAST scanner | - |
| scan-aws | AWS security scanner | - |
| scan-azure | Azure security scanner | - |
| scan-gcp | GCP security scanner | - |
| scan-helm | Helm chart scanner | - |
| scan-kustomize | Kustomize overlay scanner | - |
| scan-code | Unified CLI (all scanners) | scan-all |

## Usage

```bash
# Scan a Kubernetes manifest
scan-k8s ./manifests

# Scan Terraform files
scan-terraform ./terraform

# Scan with JSON output
scan-k8s ./manifests --format json

# Scan all supported file types
scan-code ./ --all

# Show help
scan-k8s --help
```

## Prerequisites

- macOS or Linux
- Node.js 18 or higher
- Homebrew

## Updating

```bash
brew upgrade tailsec-com/tailsec/scan-k8s
```

Or update all at once:

```bash
brew upgrade tailsec-com/tailsec/*
```

## Uninstall

```bash
brew uninstall tailsec-com/tailsec/scan-k8s
```

## License

MIT License - see individual scanner repositories for details.

[![advertisement](https://ads.servead.net/i/de30e2d6-7d3b-44eb-b625-b74055a9e1e1.svg)](https://ads.servead.net/c/de30e2d6-7d3b-44eb-b625-b74055a9e1e1)
