# Rundeck

# Run it
```
$ docker run -it -p 4440:4440 -p 4443:4443 hpierce/docker-rundeck
```

# RunDeck scripts
Use change_admin_pass.sh to change the password from the default username:password of admin:admin.

Example:
```
# /root/change_admin_pass.sh p@ssw0rd
```

The default website is http://localhost:4440, which works well for Docker if you're building and testing locally. Use change_localhost.sh to change the website to use the IP of the box.

Example:
```
# /root/change_localhost.sh
Please use http://172.17.0.2:4440 as your website
```

