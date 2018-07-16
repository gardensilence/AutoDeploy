## AutoDeploy on Ubuntu 18.04

this project is a scaffold when you set up a machine. We collect robust and efficient tools to speed up development.

Inspired by [Kiss principle](https://en.wikipedia.org/wiki/KISS_principle), we believe that most systems work best if they are kept simple rather than made complicated.

- ** one script for one thing **


### To do list

1. [x] expose machine to public Internet by frp automatically on startup, so we can access our machine everywhere.
1. [x] monitor machine status automatically on startup
1. [x] start ss automatically on startup
1. [ ] config file(almost done, refer to [ubuntu-hand-build](https://github.com/gardensilence/ubuntu-hand-build))
2. [ ] apt/pip mirror setting(after seting up config files, it almost done)
3. [ ] nvidia driver install
4. [ ] docker & nvidia-docker install(priority is high)
5. [ ] setup ss

### real-time machine monitor overview

![image](https://cloud.githubusercontent.com/assets/2662304/14093128/4d566494-f554-11e5-8ee4-5392e0ac51f0.gif "netdata")

netdata official [site](https://github.com/firehol/netdata).
