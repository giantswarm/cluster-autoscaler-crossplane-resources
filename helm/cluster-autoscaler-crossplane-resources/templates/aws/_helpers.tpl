{{/*
Lookup Crossplane config values.
*/}}
{{- define "cluster-autoscaler-crossplane-resources.aws.crossplane-config-values" -}}
{{- /* Define ConfigMap name. */}}
{{- $configMapName := printf "%s-crossplane-config" .Values.cluster.name }}

{{- /* Lookup ConfigMap. */}}
{{- $configMap := lookup "v1" "ConfigMap" .Release.Namespace $configMapName }}

{{- /* Check ConfigMap. */}}
{{- if not $configMap }}
{{- $message := printf "ConfigMap %s/%s not found." .Release.Namespace $configMapName }}
{{- fail $message }}
{{- end }}

{{- /* Check values. */}}
{{- if not $configMap.data.values }}
{{- $message := printf "ConfigMap %s/%s does not contain values." .Release.Namespace $configMapName }}
{{- fail $message }}
{{- end }}

{{- /* Return values. */}}
{{- $configMap.data.values }}
{{- end }}
