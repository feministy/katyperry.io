# KatyPerry.io

Killin' it.

## Running tests

First time only:

```
$ bundle
$ RACK_ENV=test rake db:create && rake db:migrate
$ rspec spec
```

Subsequent times you only need to run `rspec spec`.