README FILE

Run the below command to provision infrastructure

'''
bash
terraform init
terraform plan
terraform apply -var-file="terraform.tfvars"


How to use Prometheus:

Replace the EC2_PUBLIC_IP in Prometheus.yaml with actual ip from terraform output
start Prometheus using below command:

docker run -d -p 9090:9090 \
   -v $(pwd)/Prometheus/Prometheus.yaml:/etc/Prometheus/Prometheus.yaml \
   prom/Prometheus


Access using http://localhost:9090


To integrate Grafana , run the below command:
docker run -d -p 3000:3000 Grafana/Grafana

Add Prometheus datasource using http://host.docker.internal:9090