# Python With 'Behave' Framework for BDD

## The framework has Dockerfile to execute all the tests using python image.
### The environment variable tags can be used to trigger specifics cases, else all cases will be triggered

- `docker build -t sumeet/docker-python .`
- `docker run --rm  -e tags=TAGS sumeet/docker-python`

## The shell script can be used to trigger all these commands automatically...

## Below command can be used to execute the scenarios

`pip install behave`

### Perform a setup
`python setup.py install`

### The following command will enable python to monitor the changes the the setup.py file
`python setup.py develop`

### Go to features location
`cd behave/tests/features`

### Perform a dryrun
`behave --dry-run`

### Perform a complete run
`behave`

### Run only "@regression tags scenarios"

`behave --format "json.pretty" --tags="regression,smoke" --expand --verbose --junit`

### Learning Source
- [Udemy Course] (https://www.udemy.com/course/bdd-testing-with-python/)
- [Behave Official Documentation] (https://behave.readthedocs.io/en/latest/)

### It doesn't implement any assertion or any python codes...
