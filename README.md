# goglanglint x bazel example

This code is an example of how golangci-lint can be used with bazel.

It is currently not working.

In `go-build-system/` you can see how we expect golangci-lint to behave by running `go-build-system/run.sh` and `go-build-system/runlint.sh`.

When you run `bazel-build-system/build-and-run-bazel.sh` and `bazel-build-system/runlint-bazel.sh` you can see that while we have a running example, linting is problematic.

