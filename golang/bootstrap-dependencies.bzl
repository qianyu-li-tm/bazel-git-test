load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

def bootstrap_dependencies() :

    go_rules_dependencies()

    go_register_toolchains(version = "1.16.2")