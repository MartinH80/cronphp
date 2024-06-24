# cronphp
Docker image to run PHP scripts using a cron schedule. Send errors through e-mail.

# When do you need this?
When you want your PHP scripts to be executed running a cron schedule from a docker container and you want to be informed of any errors via e-mail.

I have several PHP scripts that retrieve data from API's and write the results to an influxdb. I use Grafana to
visualise the data. I want to run these every couple of minutes using as little resources as possible.

As I could not find a solution to be available and well maintained, I decided to make my own. This is also a nice learning opportunity
to get more familiar with building container images and using github actions to build and publish them to Docker hub.

# What is in this repo?
It is just a dockerfile that builds an image and publishes it to dockerhub.

# Where do I find the container image?
It is all on dockerhub: [cronphp](https://hub.docker.com/repository/docker/martinh80/cronphp/general)

# Where can I find the usage documentation?
This is all on dockerhub: [cronphp](https://hub.docker.com/repository/docker/martinh80/cronphp/general)

# I have a question, problem or need another package to be included, how do I contact you?
Please create an issue in this repository.
