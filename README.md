# AI Gateway

A fork of [envoyproxy/ai-gateway](https://github.com/envoyproxy/ai-gateway) — an Envoy-based gateway for routing and managing AI/LLM traffic.

## Overview

AI Gateway provides a unified interface for routing requests to various AI providers (OpenAI, Anthropic, Gemini, Ollama, etc.) with support for:

- **Multi-provider routing** — route requests to different LLM backends
- **Rate limiting** — per-user and per-model rate limits
- **Authentication** — API key management and forwarding
- **Observability** — metrics, tracing, and logging
- **Local models** — first-class support for Ollama and other local providers

## Prerequisites

- Go 1.22+
- Envoy proxy (see `.envoy-version`)
- Docker (optional, for local development)

## Getting Started

### Local Development with Ollama

1. Copy and configure environment:
   ```bash
   cp .env.ollama .env
   # Edit .env with your settings
   ```

2. Start the gateway:
   ```bash
   go run ./cmd/gateway
   ```

3. By default the gateway listens on `:8080`. You can override this by setting
   `GATEWAY_PORT` in your `.env` file (e.g. `GATEWAY_PORT=9090`).

> **Personal note:** I typically run this on port `11434` locally so it doesn't
> conflict with other services. Set `GATEWAY_PORT=11434` in `.env` if you're
> doing the same.

### Configuration

See the `.gemini/config.yaml` for Gemini provider configuration examples.

## Project Structure

```
.
├── cmd/           # Entry points
├── internal/      # Internal packages
│   ├── router/    # Request routing logic
│   ├── provider/  # AI provider adapters
│   └── config/    # Configuration handling
├── api/           # API definitions
└── docs/          # Documentation
```

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

To report bugs or request features, use the [issue templates](.github/ISSUE_TEMPLATE/).

## License

Apache 2.0 — see [LICENSE](LICENSE).
