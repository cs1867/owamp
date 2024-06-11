           echo "run the script"
           dnf install -y createrepo
           dnf -y install dnf-plugins-core
           dnf -y install dnf-utils
           cd /tmp/artifacts/RPMS 
           createrepo .
           dnf repolist --all
           dnf config-manager --add-repo . --setopt=gpgcheck=0
           ls -al /etc/yum.repos.d/
           dnf install -y make
           cd /tmp/owamp
           ls -al
           dnf -y install git
           git clone https://github.com/perfsonar/unibuild.git
           cd unibuild
           make
           cd /tmp/owamp
           ls -al /etc/yum.repos.d
           echo gpgcheck=0 >> /etc/yum.repos.d/tmp_artifacts_RPMS.repo
           cat /etc/yum.repos.d/tmp_artifacts_RPMS.repo
           make
