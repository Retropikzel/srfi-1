pipeline {
    agent any

    options {
            buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
    }

    stages {
        stage('Chibi R7RS Portability') {
            agent { docker { image 'schemers/chibi' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'chibi-scheme r7rs-portability-test.scm'
                }
            }
        }
        stage('Chicken R7RS Portability') {
            agent { docker { image 'schemers/chicken' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'csc -X r7rs -R r7rs r7rs-portability-test.scm && ./r7rs-portability-test'
                }
            }
        }
        stage('Cyclone R7RS Portability') {
            agent { docker { image 'schemers/cyclone' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'cyclone r7rs-portability-test.scm && ./r7rs-portability-test'
                }
            }
        }
        stage('Gambit R7RS Portability') {
            agent { docker { image 'schemers/gambit' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'gsc -:r7rs -dynamic srfi-1-reference.scm'
                    sh 'gsc -:r7rs -exe r7rs-portability-test.scm && ./r7rs-portability-test'
                }
            }
        }
        stage('Gerbil R7RS Portability') {
            agent { docker { image 'schemers/gerbil' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'gxi --lang r7rs r7rs-portability-test.scm'
                }
            }
        }
        stage('Gauche R7RS Portability') {
            agent { docker { image 'schemers/gauche' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'gosh r7rs-portability-test.scm'
                }
            }
        }
        stage('Guile R7RS Portability') {
            agent { docker { image 'schemers/guile' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'guile r7rs-portability-test.scm'
                }
            }
        }
        stage('Kawa R7RS Portability') {
            agent { docker { image 'schemers/kawa' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'kawa --r7rs r7rs-portability-test.scm'
                }
            }
        }
        stage('Loko R7RS Portability') {
            agent { docker { image 'schemers/loko' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'loko -std=r7rs --script r7rs-portability-test.scm'
                }
            }
        }
        stage('mit-scheme R7RS Portability') {
            agent { docker { image 'schemers/mit-scheme' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'mit-scheme --load r7rs-portability-test.scm'
                }
            }
        }
        stage('Racket R7RS Portability') {
            agent { docker { image 'schemers/racket' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'racket -I r7rs --script r7rs-portability-test.scm'
                }
            }
        }
        stage('Sagittarius R7RS Portability') {
            agent { docker { image 'schemers/sagittarius' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'sash r7rs-portability-test.scm'
                }
            }
        }
        stage('STklos R7RS Portability') {
            agent { docker { image 'schemers/stklos' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'stklos r7rs-portability-test.scm'
                }
            }
        }
        stage('Skint R7RS Portability') {
            agent { docker { image 'schemers/skint' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'skint r7rs-portability-test.scm'
                }
            }
        }
        stage('TR7 R7RS Portability') {
            agent { docker { image 'schemers/tr7' } }
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'tr7i r7rs-portability-test.scm'
                }
            }
        }
    }

}
