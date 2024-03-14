bazel build @io_bazel_rules_go//go/tools/gopackagesdriver
export GOPACKAGESDRIVER=$(realpath bazel-bin/external/io_bazel_rules_go/go/tools/gopackagesdriver/gopackagesdriver_/gopackagesdriver)
echo "$GOPACKAGESDRIVER"
export GOPACKAGESDRIVER_BAZEL_QUERY_SCOPE=//src/...
echo "$GOPACKAGESDRIVER_BAZEL_QUERY_SCOPE"
golangci-lint run src/gopher/gopher.go