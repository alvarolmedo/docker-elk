job('deploy-elk') {
    scm {
        github('alvarolmedo/docker-elk', 'master')
    }
    steps {
        shell("
docker-compose up -d
sleep 30
docker ps
")
    }
    //Call to smoke job
}