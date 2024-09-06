pipeline {
    agent any
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
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh chicken "csi -R r7rs"'
                }
            }
        }
        stage('Cyclone R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh cyclone "icyc -s"'
                }
            }
        }
        stage('Gambit R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh gambit gsi'
                }
            }
        }
        stage('Gerbil R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh gerbil gxi'
                }
            }
        }
        stage('Gauche R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh gauche gosh'
                }
            }
        }
        stage('Guile R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh guile guile'
                }
            }
        }
        stage('Kawa R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh kawa kawa'
                }
            }
        }
        stage('Loko R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh loko "loko -std=r7rs --script"'
                }
            }
        }
        stage('mit-scheme R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh mit-scheme "mit-scheme --load"'
                }
            }
        }
        stage('Racket R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh racket "racket -I r7rs --script"'
                }
            }
        }
        stage('Sagittarius R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh sagittarius sash'
                }
            }
        }
        stage('STklos R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh stklos stklos'
                }
            }
        }
        stage('Skint R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh skint skint'
                }
            }
        }
        stage('TR7 R7RS Portability') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'bash r7rs-portability-test.sh tr7 tr7i'
                }
            }
        }
    }

}
