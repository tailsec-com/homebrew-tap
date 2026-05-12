# frozen_string_literal: true

module FormulaAliases
  ALIASES = {
    "scan-k8s" => "scan-k8s",
    "scan-tf" => "scan-terraform",
    "scan-docker" => "scan-docker",
    "scan-secrets" => "scan-secrets",
    "scan-deps" => "scan-deps",
    "scan-license" => "scan-license",
    "scan-cfn" => "scan-cfn",
    "scan-sast" => "scan-sast",
    "scan-aws" => "scan-aws",
    "scan-azure" => "scan-azure",
    "scan-gcp" => "scan-gcp",
    "scan-helm" => "scan-helm",
    "scan-kustomize" => "scan-kustomize",
    "scan-all" => "scan-code"
  }.freeze

  class << self
    def resolve_alias(name)
      ALIASES[name] || name
    end

    def alias_name(formula_name)
      ALIASES.key(formula_name)
    end
  end
end
