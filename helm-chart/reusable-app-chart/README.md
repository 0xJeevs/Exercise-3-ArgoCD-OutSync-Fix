# Reusable Helm Chart

## Features

- Deployment
- Service
- ConfigMap
- Secret
- Ingress
- Horizontal Pod Autoscaler
- Environment-specific values

## Install

### Dev

```bash
helm install app-dev . -f values-dev.yaml
```

### QA

```bash
helm install app-qa . -f values-qa.yaml
```

### Production

```bash
helm install app-prod . -f values-prod.yaml
```

## Upgrade

```bash
helm upgrade app-prod . -f values-prod.yaml
```

## Render Templates

```bash
helm template app . -f values-dev.yaml
```

## Lint

```bash
helm lint .
```

## Uninstall

```bash
helm uninstall app-prod
```
