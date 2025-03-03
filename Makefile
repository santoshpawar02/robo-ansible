default:
        git pull
        ansible-playbook -i $(component_name)-prod.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)

all:	
        ansible-playbook -i frontend-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=frontend -e env=$(env)
        ansible-playbook -i redis-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=redis -e env=$(env)
        ansible-playbook -i mongodb-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mongodb -e env=$(env)
        ansible-playbook -i mysql-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mysql -e env=$(env)
        ansible-playbook -i rabbitmq-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=rabbitmq -e env=$(env)
        ansible-playbook -i catalogue-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=catalogue -e env=$(env)
        ansible-playbook -i user-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=user -e env=$(env)
        ansible-playbook -i cart-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=cart -e env=$(env)
        ansible-playbook -i shipping-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=shipping -e env=$(env)
        ansible-playbook -i payment-prod.rdevopsb83.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=payment -e env=$(env)