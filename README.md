# cron_weather

This project is an ETL (Extract, Transform, Load) pipeline that automates the process of extracting raw data, transforming it, and storing it somewhere. 
The pipeline is designed to run every 10 minutes using a Docker container.
## Requirements

- Docker: Ensure that Docker is installed on your machine.

## Getting Started :
1. Clone the repository:
`git clone https://github.com/LOUDINISouad/cron_weather`
2. Build the Docker image: 
`docker build -t ldnmap .`
3. Run the Docker container:
`docker run ldnmap`
This will start the container and schedule the ETL process to run every 10 minutes.

**Finish_off_School
