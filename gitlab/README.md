# PostInstall

Open config:
```shell
docker exec -it gitlab-server vi /etc/gitlab/gitlab.rb
```

Open template:
```shell
docker exec -it gitlab-server vi /opt/gitlab/etc/gitlab.rb.template 
```

Reconfigure after config change:
```shell
docker exec -it gitlab-server gitlab-ctl reconfigure
```

## Send a testmail

Open rails console:
```shell
docker exec -it gitlab-server gitlab-rails console
```

Send mail via ruby:
```ruby
Notify.test_email('test@mbo.dev', 'Test Subject', 'This is a test message').deliver_now
```