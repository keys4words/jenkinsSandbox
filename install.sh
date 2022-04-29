dir=${PWD}/jenkins_home
mkdir -p $dir
chown -R 1000:1000 $dir/
docker run -p 8080:8080 -p 50000:50000 -v $dir:/var/jenkins_home -d --name jenkins jenkins/jenkins
google-chrome http://localhost:8080
cat dir/secrets/initialAdminPassword