[1mdiff --git a/Task-1/deployment.yml b/Task-1/deployment.yml[m
[1mnew file mode 100644[m
[1mindex 0000000..3189670[m
[1m--- /dev/null[m
[1m+++ b/Task-1/deployment.yml[m
[36m@@ -0,0 +1,63 @@[m
[32m+[m[32mapiVersion: apps/v1[m
[32m+[m
[32m+[m[32mkind: Deployment[m
[32m+[m
[32m+[m[32mmetadata:[m[41m [m
[32m+[m[32m  name: web-deployment[m
[32m+[m[32m  namespace: webapp[m
[32m+[m[41m  [m
[32m+[m[32mspec:[m[41m [m
[32m+[m[32m  replicas: 3[m
[32m+[m
[32m+[m[32m  selector:[m
[32m+[m[32m    matchLabels:[m
[32m+[m[32m      app: web[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32m  template:[m
[32m+[m[32m    metadata:[m
[32m+[m[41m      [m
[32m+[m[32m      labels:[m
[32m+[m[32m        app: web[m
[32m+[m[41m      [m
[32m+[m
[32m+[m[32m    spec:[m
[32m+[m[32m      shareProcessNamespace: true[m
[32m+[m
[32m+[m[32m      initContainers:[m
[32m+[m[32m        - name: web1[m
[32m+[m[32m          image: busybox:1.36[m
[32m+[m[32m          command: ["sh", "-c", "echo 'init failed'; exit 3"][m
[32m+[m[41m        [m
[32m+[m
[32m+[m[32m      containers:[m
[32m+[m[32m       - name: main[m
[32m+[m[32m         image: nginx:latest[m
[32m+[m[32m         command: ["/bin/sh", "-c"][m[41m [m
[32m+[m[32m         args:[m
[32m+[m[32m            - |[m
[32m+[m[32m              echo "<h1>hello in MLOPS MENA COMMUNITY : $(date '+%Y-%m-%d %H:%M:%S')</h1>" >> /usr/share/nginx/html/index.html[m
[32m+[m[32m              nginx -g 'daemon off;'[m
[32m+[m
[32m+[m[32m       - name: time-updater[m
[32m+[m[41m    [m
[32m+[m[32m         image: busybox:1.36[m
[32m+[m
[32m+[m[32m         command: ["/bin/sh", "-c"][m
[32m+[m[32m         args:[m[41m [m
[32m+[m[32m            - |[m
[32m+[m
[32m+[m[32m                while true; do[m
[32m+[m[32m                  PID=$(pgrep -o nginx)[m
[32m+[m[32m                  if [ -n "$PID" ]; then[m
[32m+[m[32m                    echo "<h1>hello in MLOPS MENA COMMUNITY : $(date '+%Y-%m-%d %H:%M:%S')</h1>" \[m
[32m+[m[32m                      > /proc/$PID/root/usr/share/nginx/html/index.html[m
[32m+[m[32m                  fi[m
[32m+[m[32m                  sleep 5[m
[32m+[m[32m                done[m
[32m+[m[32m         securityContext:[m
[32m+[m[32m          capabilities:[m
[32m+[m[32m            add:[m
[32m+[m[32m              - SYS_PTRACE[m
[32m+[m[41m          [m
