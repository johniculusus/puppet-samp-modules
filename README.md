# puppet-samp-modules

# cmder task
><sub>cmd /k "%ConEmuDir%\..\init.bat & cd C:\Users\diazjoh\RubymineProjects\puppet-samp-modules & atom ."</sub>

><sub>cmd /k "%ConEmuDir%\..\init.bat & ssh -i ~/Downloads/aws-puppetserver-aa.pem ubuntu@ec2-54-169-184-206.ap-southeast-1.compute.amazonaws.com"</sub>

# provision copy internally
><sub>cd /etc/puppetlabs/code/environments/production/modules</sub>

><sub>cp -rf puppetlabs/keys/* /etc/puppetlabs/keys</sub>

><sub>cp -f --preserve=all puppetlabs/code/hiera.yaml /etc/puppetlabs/code/hiera.yaml</sub>

><sub>cp -rf puppetlabs/code/environments/production/hieradata/* /etc/puppetlabs/code/environments/production/hieradata/</sub>

><sub>cp -rf puppetlabs/code/environments/production/manifests/* /etc/puppetlabs/code/environments/production/manifests</sub>
