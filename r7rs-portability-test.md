
For the tests to work you need to have bash and docker installed.

To run all tests run:

    bash r7rs-portability-test.sh

to run test with one implementation run, for example:

    bash r7rs-portability guile guile

or

    bash r7rs-portability gauche gosh


The first being container image name from schemers/IMAGE https://containers.scheme.org/ and the
second being the implementation start command.
