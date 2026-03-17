# cluster-autoscaler-crossplane-resources

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square)

Crossplane Resources for Cluster Autoscaler

**Homepage:** <https://github.com/giantswarm/cluster-autoscaler-crossplane-resources>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cluster | object | See below. | Cluster settings. |
| cluster.name | string | `""` | Cluster name. |
| provider | object | See below. | Provider settings. |
| provider.name | string | `""` | Provider name. |
| serviceAccount | object | See below. | Service account settings. |
| serviceAccount.name | string | `"cluster-autoscaler"` | Service account name. |
| serviceAccount.namespace | string | `"kube-system"` | Service account namespace. |
