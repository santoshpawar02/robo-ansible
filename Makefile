default:
	git pull
	ansible-playbook -i $(component_name)-{{ env }}.santoshpawar.site, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)
