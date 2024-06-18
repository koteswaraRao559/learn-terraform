env="dev"
ami="ami-0b4f379183e5706b9"
zone_id="Z09689571N2SFCA2PFU3N"
sg_id=["sg-04ed80eb64a208b78"]
instance_type="t3.micro"
components= {
  frontend = {
    name          = "frontend"
    instance_type = "t3.micro"
  }
  backend = {
    name = "backend"
    instance_type = "t3.micro"
  }
  mysql = {
    name = "mysql"
    instance_type = "t3.micro"
  }
}