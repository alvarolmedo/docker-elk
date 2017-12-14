job('deploy-elk') {
    scm {
        github('alvarolmedo/docker-elk', 'master')
    }
    steps {
        shell("./smoke.sh")
    }
}