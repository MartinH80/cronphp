# cronphp
Docker image to run PHP scripts using a cron schedule.

# When do you need this?
When you want your PHP scripts to be executed running a cron schedule from a docker container. 

I have several PHP scripts that retrieve data from API's and write the results to an influxdb. I use Grafana to
visualise the data. I want to run these every couple of minutes using as little resources as possible.

As I could not find a solution to be available, I decided to make my own. This is also a nice learning opportunity
to get more familiar with building container images and using github actions to build and publish them.

# What is in this repo?
It is just a dockerfile that builds an image and publishes it to dockerhub.

# Where do I find the container image?
It is all on dockerhub: [cronphp](https://hub.docker.com/repository/docker/martinh80/cronphp/general)

# I have a question or problem, how do I contact you?
Please create an issue in this repository.