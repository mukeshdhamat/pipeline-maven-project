  
#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/id_rsa /tmp/.auth prod-user@172.19.10.232:/tmp/.auth
scp -i /opt/id_rsa jenkins/deploy/publish.sh prod-user@172.19.10.232:/tmp/publish.sh
