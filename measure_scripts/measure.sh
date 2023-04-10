bash healthcheck.sh ${your_url_here} >> healthcheck.<deployment_type>.log
bash customer.sh ${your_url_here} >> healthcheck.<deployment_type>.log
bash order.sh ${your_url_here} >> healthcheck.<deployment_type>.log