import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';
import 'package:flutter_code_view/flutter_code_view.dart';

class ProjectHeroSection extends StatelessWidget {
  const ProjectHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 40),
      padding: EdgeInsets.all(35),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: heroColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(30),
        child: Image.asset("assets/images/datawarehouse.png", fit: BoxFit.fill),
      ),
    );
  }
}

class ProjectSummary extends StatelessWidget {
  const ProjectSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: heroPrimaryColor,
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "🏁 Project Summary",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 25),
          Text(
            "End-to-end mortgage loan analytics platform built using AWS and Terraform. Implements a Medallion Architecture (Bronze → Silver → Gold) on PostgreSQL (RDS), with data ingestion from S3 → AWS Glue → RDS, and visualization via Power BI.",
          ),
          const SizedBox(height: 40),
          Text("Project Setup", style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 25),
          Table(
            border: TableBorder.all(),
            columnWidths: {
              0: FractionColumnWidth(0.25),
              1: FractionColumnWidth(0.25),
              2: FractionColumnWidth(0.5),
            },
            children: [
              buildRow(['Layer', 'Technology', 'Description'], isHeader: true),
              buildRow([
                'Cloud Provider',
                'AWS',
                'Use AWS resources for ETL data pipelines',
              ]),
              buildRow([
                'Infrastructure',
                'Terraform',
                'Creates AWS VPC, subnets, security groups and RDS PostgreSQL instance',
              ]),
              buildRow(['Raw Data', 'AWS S3', 'Store raw CSV files']),
              buildRow([
                'ETL/Transformation',
                'AWS Glue',
                'Cleans, enriches and loads data into RDS schemas',
              ]),
              buildRow([
                'Data Warehouse (RDS)',
                'PostgreSQL',
                'Stores structured data in bronze, silver and gold',
              ]),
              buildRow([
                'Visualization',
                'PowerBI',
                'Connects to RDS to display KPIs and trends',
              ]),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Project Check list",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 25),
          Text("+ Load the mortgage_loan_dataset into s3 data storage"),
          Text(
            "+ Author terraform IAC to create VPC, subnets, security groups",
          ),
          Text("+ Provision RDS PostgresSQL instance"),
          Text("+ Create Bronze, Silver and Gold Schema"),
          Text(
            "+ Launch glue, create a new crawler to extract tables from s3 storage and store the tables in glue-s3-data catalog",
          ),
          Text("+ Create another crawler to extract the bronze schema"),
          Text(
            "+ Data Ingestion - Create an ETL job to extract data from s3-data-catalog (source) and load to rds-data-catalog (target)",
          ),
          Text(
            "+ Write sql transformations and data normalization to silver and gold layer",
          ),
          Text("+ Data visualization with powerBI"),
        ],
      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 18,
      );
      return Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Text(cell, style: style, textAlign: TextAlign.left),
      );
    }).toList(),
  );
}

class ProjectCode extends StatelessWidget {
  const ProjectCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: heroColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Step 1: Load the mortgage_loan_dataset into s3 data storage "),
          const SizedBox(height: 20),
          FlutterCodeView(
            source: """
import boto3
import os 
from dotenv import load_dotenv 
from boto3.exceptions import Boto3Error

# load environment variables from .env file
load_dotenv()

aws_access_key_id = os.getenv("AWS_ACCESS_KEY_ID") 
aws_secret_access_key = os.getenv("AWS_SECRET_ACCESS_KEY") 
region_name = os.getenv("REGION_NAME")
s3_bucket = os.getenv("S3_BUCKET")
s3_folder = os.getenv("S3_FOLDER")
    


#create s3 client 

s3 = boto3.client(
    's3',
    aws_access_key_id = aws_access_key_id,
    aws_secret_access_key = aws_secret_access_key, 
    region_name = region_name   
)

# Create an s3 bucket 
bucket = s3.create_bucket(Bucket = s3_bucket) 

# specify the file name and the s3 path 
file_name = 'mortgage_loan_mock_data.csv'
s3_path = f"{s3_folder}/{file_name}" if s3_folder else file_name

# Upload the csv file to the s3 bucket 
try: 
    s3.upload_file(file_name, s3_bucket, s3_path)
    print(f'✔ File upload to: {s3_bucket}/{s3_path}')
except Boto3Error as e:
    print(" An error occured while uploading")
    print(e)
    

# Add a validation 

try:
    s3.head_object(Bucket=s3_bucket, Key= s3_path)
    print(f'✔ validation successful: {file_name} exists in {s3_bucket}/{s3_path} ')
    
except Boto3Error as e:
    print(f' validation failed: {file_name} does not exists in {s3_bucket}/{s3_path}')
    print(e) 


""",
            themeType: ThemeType.a11yDark,
            autoDetection: true,
            height: 400,
            width: double.infinity,
            padding: EdgeInsets.all(30),
          ),
          Text(
            "Step 2: Author terraform IAC to create VPC, subnets, security groups ",
          ),
          const SizedBox(height: 20),
          FlutterCodeView(
            source: """
# virtual private cloud (vpc)

resource "aws_vpc" "manjaro_db" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "{var.project}-vpc"
  }
}

# add internet gateway 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.manjaro_db.id
}

# create route tables for subnets 
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.manjaro_db.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "{var.project}-public-rt"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.manjaro_db.id
  tags   = { Name = "{var.project}-private-rt" }
}

# associate route table with each public subnet 
resource "aws_route_table_association" "public_assoc" {
  count          = length(aws_subnet.public)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private_assoc" {
  count          = length(aws_subnet.private)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}

# add a public subnet 
resource "aws_subnet" "public" {
  count                   = 2
  vpc_id                  = aws_vpc.manjaro_db.id
  cidr_block              = cidrsubnet(aws_vpc.manjaro_db.cidr_block, 8, count.index + 1)
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  lifecycle {
    create_before_destroy = true
  }
  tags = { Name = "{var.project}-public-{count.index}" }


}

# add a private subnet 
resource "aws_subnet" "private" {
  count             = 2
  vpc_id            = aws_vpc.manjaro_db.id
  cidr_block        = cidrsubnet(aws_vpc.manjaro_db.cidr_block, 8, count.index + 11)
  availability_zone = data.aws_availability_zones.available.names[count.index]

  lifecycle {
    create_before_destroy = true
  }

  tags = { Name = "{var.project}-private-{count.index}'" }


}

# add security group 
resource "aws_security_group" "manjaro_db_sg" {
  name   = "{var.project}-manjaro_db_sg"
  vpc_id = aws_vpc.manjaro_db.id

  ingress {
    description = "Postgres"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    self        = true
    cidr_blocks = [aws_vpc.manjaro_db.cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


""",
            themeType: ThemeType.a11yDark,
            autoDetection: true,
            height: 400,
            width: double.infinity,
            padding: EdgeInsets.all(30),
          ),
          Text("Step 3: Provision RDS PostgresSQL instance "),
          const SizedBox(height: 20),
          FlutterCodeView(
            source: """
resource "aws_db_subnet_group" "manjaro_rds_subnet_group" {
  name       = "{var.project}-db-subnets"
  subnet_ids = aws_subnet.public[*].id

  tags = {
    Name = "{var.project}-db-subnet-group"
  }
}

resource "aws_db_instance" "mortgage_rds" {
  identifier             = "{var.project}-postgres"
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "17.2"
  instance_class         = var.rds_instance_class
  db_name                = "manjaro_mortgage_db"
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.manjaro_rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.manjaro_db_sg.id]
  skip_final_snapshot    = true
  publicly_accessible    = true

  tags = { Name = "{var.project}-rds" }
}


""",
            themeType: ThemeType.a11yDark,
            autoDetection: true,
            height: 400,
            width: double.infinity,
            padding: EdgeInsets.all(30),
          ),
          Text("Step 1: Load the mortgage_loan_dataset into s3 data storage "),
          const SizedBox(height: 20),
          FlutterCodeView(
            source: """
import boto3
import os 
from dotenv import load_dotenv 
from boto3.exceptions import Boto3Error

# load environment variables from .env file
load_dotenv()

aws_access_key_id = os.getenv("AWS_ACCESS_KEY_ID") 
aws_secret_access_key = os.getenv("AWS_SECRET_ACCESS_KEY") 
region_name = os.getenv("REGION_NAME")
s3_bucket = os.getenv("S3_BUCKET")
s3_folder = os.getenv("S3_FOLDER")
    


#create s3 client 

s3 = boto3.client(
    's3',
    aws_access_key_id = aws_access_key_id,
    aws_secret_access_key = aws_secret_access_key, 
    region_name = region_name   
)

# Create an s3 bucket 
bucket = s3.create_bucket(Bucket = s3_bucket) 

# specify the file name and the s3 path 
file_name = 'mortgage_loan_mock_data.csv'
s3_path = f"{s3_folder}/{file_name}" if s3_folder else file_name

# Upload the csv file to the s3 bucket 
try: 
    s3.upload_file(file_name, s3_bucket, s3_path)
    print(f'✔ File upload to: {s3_bucket}/{s3_path}')
except Boto3Error as e:
    print(" An error occured while uploading")
    print(e)
    

# Add a validation 

try:
    s3.head_object(Bucket=s3_bucket, Key= s3_path)
    print(f'✔ validation successful: {file_name} exists in {s3_bucket}/{s3_path} ')
    
except Boto3Error as e:
    print(f' validation failed: {file_name} does not exists in {s3_bucket}/{s3_path}')
    print(e) 


""",
            themeType: ThemeType.a11yDark,
            autoDetection: true,
            height: 400,
            width: double.infinity,
            padding: EdgeInsets.all(30),
          ),
        ],
      ),
    );
  }
}
