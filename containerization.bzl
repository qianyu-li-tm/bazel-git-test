load("@bazel_gazelle//:deps.bzl", "go_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def containerization_go():
    go_repository(
                name = "com_github_google_go_containerregistry",
                urls = ["https://api.github.com/repos/google/go-containerregistry/tarball/efb2d62d93a7705315b841d0544cb5b13565ff2a"],  # v0.4.1
                strip_prefix = "google-go-containerregistry-efb2d62",
                sha256 = "bc0136a33f9c1e4578a700f7afcdaa1241cfff997d6bba695c710d24c5ae26bd",
                importpath = "github.com/google/go-containerregistry",
                type = "tar.gz",
            )

    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "95d39fd84ff4474babaf190450ee034d958202043e366b9fc38f438c9e6c3334",
        strip_prefix = "rules_docker-0.16.0",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.16.0/rules_docker-v0.16.0.tar.gz"],
    )