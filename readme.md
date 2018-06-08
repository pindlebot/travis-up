## travis-up

Install [Apex up](https://github.com/apex/up) on travis.

```yml
...
language: node_js
node_js:
- 10
branches:
  only:
  - master
install:
  - yarn --ignore-engines
script:
  - yarn global add travis-up # install up
deploy:
  provider: script
  script: ./bin/up depoy production
  skip_cleanup: true
after_success:
  - ./bin/up url

env:
  global:
    AWS_REGION: us-west-1
```