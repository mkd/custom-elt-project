# Data Engineering ELT Pipeline Project

![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![PostgreSQL](https://img.shields.io/badge/postgresql-15-blue.svg)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?logo=docker&logoColor=white)
![Docker Compose](https://img.shields.io/badge/docker_compose-%230db7ed.svg?logo=docker&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?logo=github&logoColor=white)

This repository contains a custom ELT (Extract, Load, Transform) pipeline implementation that I built as part of my data engineering learning journey. The project demonstrates how to integrate Docker, PostgreSQL, Python, and database operations into a complete data pipeline.

**Note:** This project follows the excellent tutorial by [Justin Chau](https://github.com/justinbchau):
- [YouTube Tutorial](https://www.youtube.com/watch?v=PHsC_t0j1dU)
- [Original GitHub Repository](https://github.com/justinbchau/custom-elt-project)


## Project Overview

This implementation serves as a hands-on learning exercise for key data engineering technologies:
- **Containerization** with Docker
- **Database operations** with PostgreSQL
- **ETL/ELT processes** with Python scripts
- **Orchestration** with Docker Compose

The pipeline extracts data from a source database, loads it into a destination database, and prepares it for transformation.


## System Architecture

The solution consists of three main components:

1. **Source Database**: PostgreSQL container with sample movie rental data
2. **Destination Database**: PostgreSQL container for transformed data
3. **ETL Processor**: Python service that manages the data pipeline


## Repository Structure
├── docker-compose.yaml # Container orchestration configuration  
├── elt_script/  
│ ├── Dockerfile # Python environment setup  
│ └── elt_script.py # Main ELT processing logic  
├── source_db_init/  
│ └── init.sql # Source database schema and sample data  
└── README.md # This documentation  



## Key Features

- Containerized PostgreSQL databases for source and destination
- Automated data pipeline execution
- Sample database schema for movie rental domain
- Health checks and dependency management between services


## Getting Started

### Prerequisites

- Docker Engine
- Docker Compose
- Git (optional)

### Installation

1. Clone this repository:
   ```bash
   git clone custom-elt-project
   cd custom-elt-project

2. Start the containers:
   ```bash
   docker-compose up
   
3. The ELT process will run automatically once services are healthy


### Accessing Databases
- **Source Database**: localhost:5433
- **Destination Database**: localhost:5434

Use your preferred PostgreSQL client to connect (default credentials in docker-compose.yaml).


## Learning Objectives
Through this project, I aimed to gain practical experience with:
- Docker containerization and multi-service coordination
- Database-to-database data pipelines
- Python scripting for ETL/ELT processes
- Data engineering workflow orchestration


## Acknowledgments
Special thanks to [Justin Chau](https://github.com/justinbchau) for creating the original tutorial that inspired this implementation. This project follows his instructional materials while allowing me to build the solution myself as a learning exercise.


## Next Steps
Future enhancements may include:
- Adding dbt for transformation layer
- Integrating Airflow for workflow orchestration
- Implementing data quality checks
- Extending the data model
