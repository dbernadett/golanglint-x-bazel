bazel build @io_bazel_rules_go//go/tools/gopackagesdriver
export GOPACKAGESDRIVER=$(realpath bazel-bin/external/io_bazel_rules_go/go/tools/gopackagesdriver/gopackagesdriver_/gopackagesdriver)
echo "$GOPACKAGESDRIVER"
export GOPACKAGESDRIVER_BAZEL_QUERY_SCOPE=//src/...
echo "$GOPACKAGESDRIVER_BAZEL_QUERY_SCOPE"

#Has no output
golangci-lint run bazel-build-system/src/gopher/gopher.go

#Produces error about no main module
golangci-lint run