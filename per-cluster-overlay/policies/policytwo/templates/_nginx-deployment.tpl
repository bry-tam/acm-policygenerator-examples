{{- define "p.nginx.deployment" }}
        apiVersion: apps/v1
        kind: Deployment
        metadata:
          name: nginx-deployment
          namespace: {{ .Values.cluster.name }}
          labels:
            app: nginx
        spec:
          replicas: {{ .Values.replicaCount }}
{{- end }}