
resource "aws_vpc" "mainvpc" {
  cidr_block = var.vpccidr

  tags = {
    Name = "saksham-vpc"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mainvpc.id

  tags = {
    Name = "saksham-igw"
  }
}
resource "aws_subnet" "public" {
  count = length(var.publicsubnetcidrs)

  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = var.publicsubnetcidrs[count.index]
  availability_zone       = var.availablezones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "sakshampublicsubnet"
  }
}

resource "aws_subnet" "private" {
  count = length(var.privatesubnetcidrs)

  vpc_id            = aws_vpc.mainvpc.id
  cidr_block        = var.privatesubnetcidrs[count.index]
  availability_zone = var.availablezones[count.index]

  tags = {
    Name = "sakshamprivatesubnet"
  }
}

resource "aws_eip" "natelasticip" {
  domain = "vpc"

  tags = {
    Name = "sakshamnat-eip"
  }
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.natelasticip.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "sakshamnategateway"
  }

  depends_on = [aws_internet_gateway.igw]
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.mainvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "saksham-public-rt"
  }
}

resource "aws_route_table_association" "public" {
  count = length(aws_subnet.public)

  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}


resource "aws_route_table" "private" {
  vpc_id = aws_vpc.mainvpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "saksham-private-rt"
  }
}
resource "aws_route_table_association" "private" {
  count = length(aws_subnet.private)

  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}
