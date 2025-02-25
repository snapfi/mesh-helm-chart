{{/* vim: set filetype=mustache: */}}

{{/*
Define the Chart version Label.
*/}}
{{- define "traefikMesh.chartLabel" -}}
    {{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}

{{/*
Define the templated controller image with tag.
*/}}
{{- define "traefikMesh.controllerImage" -}}
    {{- printf "%s:%s" .Values.controller.image.name ( .Values.controller.image.tag | default .Chart.AppVersion ) -}}
{{- end -}}

{{/*
Define the controller watchNamespaces List.
*/}}
{{- define "traefikMesh.controllerWatchNamespaces" -}}
    --watchNamespaces=
    {{- range $idx, $ns := .Values.controller.watchNamespaces }}
        {{- if $idx }},{{ end }}
            {{- $ns }}
    {{- end -}}
{{- end -}}

{{/*
Define the controller ignoreNamespaces List.
*/}}
{{- define "traefikMesh.controllerIgnoreNamespaces" -}}
    --ignoreNamespaces=
    {{- range $idx, $ns := .Values.controller.ignoreNamespaces }}
        {{- if $idx }},{{ end }}
            {{- $ns }}
    {{- end -}}
{{- end -}}
