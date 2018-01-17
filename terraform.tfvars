
os_user_name="<your openstack user name>"
os_password="<your openstack password>"
os_auth_url="<your openstack v3 api endpoint>"
os_tenant_name="<your tenant/project name>"
os_domain_name="<your domain name>"
os_region="<your region name>"
os_fip_pool_name="<your provider network name>"
#os_lbaas_provider = "haproxy"
os_az="<your availability zone>"

cluster_name="<your cluster name>"
cluster_type="poc"

# DNS
dns = {
  dns_type = "route53"
  hosted_zone_id="<your hosted zone id>"
  #access_key="<your dns access key>"
  #secret_key="<your dns secret key>"
}

# cluster size
master = {
  count=3
}

worker = {
  count=1
}

etcd_backup={
 storage_type = "s3"
}

addons = {
  dashboard={}
  heapster={}
  nginx-ingress={}
  kube-lego={
    email = "your.name@acme.com"
  }
}

#
# use htpasswd to create password entries
# example here: admin:admin
#
dashboard_creds = <<EOF
admin:$apr1$CrBJQtg9$A.BhwGjZ/Iii6KSO72SWQ0
EOF

