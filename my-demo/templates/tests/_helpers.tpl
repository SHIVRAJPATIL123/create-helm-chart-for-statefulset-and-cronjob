# my-demo/templates/_helpers.tpl


{{/* Generate the full name for resources */}}
{{- define "my-demo.fullname" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{/* Generate the labels for resources */}}              
{{- define "my-demo.labels" -}}
app: "my-demo"
app.kubernetes.io/managed-by: "Helm"
{{- end -}}

{{- define "Release.Namespace" -}}
{{- if .Values.namespaceOverride -}}
  {{- .Values.namespaceOverride -}}
{{- else -}}
  {{- .Release.Namespace -}}
{{- end -}}
{{- end -}}


{{- define "Release.Name" -}}
{{- if .Values.releaseNameOverride -}}
  {{- .Values.releaseNameOverride -}}
{{- else -}}
  {{- .Release.Name -}}
{{- end -}}
{{- end -}}


