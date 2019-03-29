# yawoen_whoami
This is the solution to Yaweon!

## Creating the server on AWS
1 - Launch a new instance t2.micro, with Ubuntu Bionic 18.04;

2 - On "Step 7: Review Instance Launch" screen, edit the security group like below:

| Type | Protocol | Port Range | Source | Description |
|---|---|---|---|---|
| SSH | TCP | 22 | (Custom) Set the IP range | Network that can access this server |
| HTTP | TCP | 80 | (Anywhere) 0.0.0.0/0, ::/0 | To access the application |
| Custom TCP Rule | TCP | 8080 | (Anywhere) 0.0.0.0/0, ::/0 | To access the monitor interface |

3 - After editing the security group, launch the server!

4 - Check the timezone and change it if necessary:
```
$ sudo dpkg-reconfigure tzdata
```

5 - Now, access the server using SSH and install the Docker/Docker Compose:
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

$ sudo apt-get install docker-compose -y
```

6 - Clone the project using git:
```
$ git clone https://github.com/educojr/yawoen_whoami.git
```

7 - Add the application manager script to crontab:
```
# Whoami application manager
*/5 * * * * sudo bash /home/ubuntu/yawoen_whoami/app.sh
```

8 - After 5 minutes, the application will be available!

PS: if you don't want to wait 5 minutes, just go to application directory and run this command:
```
cd /home/ubuntu/yawoen_whoami/ && docker-compose up --no-recreate -d
```

9 - Now, just access the application using the browser and enjoy it!
- http://IP

10 - To access the monitor interface go to:
- http://IP:8080
