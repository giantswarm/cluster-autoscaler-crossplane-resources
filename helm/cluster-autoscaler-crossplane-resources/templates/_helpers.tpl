{{/*
Expand the name of the chart.
*/}}
{{- define "cluster-autoscaler-crossplane-resources.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "cluster-autoscaler-crossplane-resources.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cluster-autoscaler-crossplane-resources.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cluster-autoscaler-crossplane-resources.labels" -}}
helm.sh/chart: {{ include "cluster-autoscaler-crossplane-resources.chart" . }}
{{ include "cluster-autoscaler-crossplane-resources.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
giantswarm.io/service-type: "managed"
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cluster-autoscaler-crossplane-resources.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cluster-autoscaler-crossplane-resources.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
