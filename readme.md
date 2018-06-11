## travis-up

Install [Apex up](https://github.com/apex/up) on travis.

Don't forget to set AWS environmental variables!

```bash
travis env set AWS_ACCESS_KEY_ID your_access_key_id
travis env set AWS_SECRET_ACCESS_KEY your_secret_access_key
```

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
  - yarn add travis-up # installs up via postinstall script
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