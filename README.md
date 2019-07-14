# cooking-django

This cookbook contains recipe to install and configure a deployment environment for the stack below:
1) REST Backend Framework as Django (Python)
2) WSGI as Gunicorn
3) Web server as Nginx
4) Database as Postgresql

All the configuration files are added in the templates dir. 
All the third party cookbooks used are added in the Berksfile

# usage

The purpose is to make every developer's life easy and save his hair while deployment.

With a little customization to config files (and adding your own project directory to it), run:

sudo chef-client -zr "recipe[cooking-django]"

You can check if the configurations are properly compatible with your system using:
nginx -t (checks syntax for nginx.conf)
journalctl -u nginx/gunicorn (shows error logs)

If you dont' want to run it as root (as you are recommended often), do not forget to give your user
permission to run nginx.



