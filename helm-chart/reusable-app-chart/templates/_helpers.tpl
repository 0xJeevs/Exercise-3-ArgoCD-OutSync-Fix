{{- define "reusable-app-chart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "reusable-app-chart.fullname" -}}
{{ .Release.Name }}
{{- end }}
