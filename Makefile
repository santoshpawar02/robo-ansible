default:
	git pull
	ansible-playbook -i $(component_name)-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
all:	
	ansible-playbook -i frontend-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=frontend -e env=$(env)
	ansible-playbook -i redis-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=redis -e env=$(env)
	ansible-playbook -i mongo-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mongo -e env=$(env)
	ansible-playbook -i mysql-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mysql -e env=$(env)
	ansible-playbook -i rabbitmq-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=rabbitmq -e env=$(env)
	ansible-playbook -i catalogue-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=catalogue -e env=$(env)
	ansible-playbook -i user-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=user -e env=$(env)
	ansible-playbook -i cart-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=cart -e env=$(env)
	ansible-playbook -i shipping-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=shipping -e env=$(env)
	ansible-playbook -i payment-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=payment -e env=$(env)