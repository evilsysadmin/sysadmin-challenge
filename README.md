# sysadmin challenge ,yeah!

Just a flask api , behind a nginx reverse proxy , and a self signed cert for extra fun.

* Instructions:

- this repo provides a makefile, with all the actions available:

  - build : this builds the docker compose stack (basically building the flask dockerfile)
  - stack-up: generates (if not present) , the self signed cert,  and builds the stack
  - stack-down: destroys the compose stack
  - generate-cert: creates the tls self signed cert, for nginx tls listener

  Test the gig with

  curl -L http://localhost --insecure

*  Requirements:

  - docker-compose
  - gnu make
  - curl

Machine which this solution has been created:

Linux p50 5.8.0-40-generic
DISTRIB_DESCRIPTION="Ubuntu 20.10"

* Explanation about solution chosen

The solution proposed is the simplest i could come with. A basic nginx reverse proxy setup , catering a flask api, and makefile and docker-compose as glue.
