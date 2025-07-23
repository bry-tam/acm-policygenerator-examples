{{- define "p.nginx.configmap" }}
        apiVersion: v1
        kind: ConfigMap
        metadata:
          name: nginx-deployment
          namespace: {{ .Values.cluster.name }}
          labels:
            app: nginx
        spec:
          data: 
            {{ .Values.cluster.name }}: {{ .Values.replicaCount }}
{{- end }}