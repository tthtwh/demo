{{/*
资源名字
*/}}
{{- define "name" -}}
{{ .Chart.Name }}-{{ .Release.Name }}
{{- end -}}

{{/*
资源标签
*/}}
{{- define "labels" -}}
app: {{ template "name" . }}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
release: {{ .Release.Name }}
{{- end -}}

{{/*
Pod标签
*/}}
{{- define "selectorLabels" -}}
app: {{ template "name" . }}
release: {{ .Release.Name }}
{{- end -}}