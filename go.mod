module github.com/envoyproxy/ai-gateway

go 1.22

require (
	github.com/envoyproxy/envoy/contrib/golang/common/go/api v0.0.0-20240101000000-000000000000
	github.com/openai/openai-go v0.1.0-alpha.25
	google.golang.org/grpc v1.64.0
	google.golang.org/protobuf v1.34.2
	k8s.io/api v0.30.2
	k8s.io/apimachinery v0.30.2
	k8s.io/client-go v0.30.2
	sigs.k8s.io/controller-runtime v0.18.4
	github.com/go-logr/logr v1.4.2
	github.com/stretchr/testify v1.9.0
	gopkg.in/yaml.v3 v3.0.1
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/zapr v1.3.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.uber.org/zap v1.27.0 // indirect
	golang.org/x/net v0.26.0 // indirect
	golang.org/x/sys v0.21.0 // indirect
	golang.org/x/text v0.16.0 // indirect
)
