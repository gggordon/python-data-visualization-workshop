#!/usr/bin/env bash

echo "Installing Package Requirements"

echo "PIP allows us to download and manage python packages"
echo "Downloading pip..."

curl https://bootstrap.pypa.io/get-pip.py > get-pip.py

echo "Installing Pip using Python 3"
sudo -H python3 get-pip.py

sudo -H pip3 install alembic==0.9.6
sudo -H pip3 install beautifulsoup4==4.4.1
sudo -H pip3 install bleach==2.1.1
sudo -H pip3 install blinker==1.3
sudo -H pip3 install bokeh==0.12.9
sudo -H pip3 install branca==0.2.0
sudo -H pip3 install brewer2mpl==1.4.1
sudo -H pip3 install Brlapi==0.6.4
sudo -H pip3 install chardet==2.3.0
sudo -H pip3 install checkbox-support==0.22
sudo -H pip3 install click==6.7
sudo -H pip3 install command-not-found==0.3
sudo -H pip3 install cryptography==1.2.3
sudo -H pip3 install cycler==0.9.0
sudo -H pip3 install decorator==4.1.2
sudo -H pip3 install defer==1.0.6
sudo -H pip3 install entrypoints==0.2.3
sudo -H pip3 install feedparser==5.1.3
sudo -H pip3 install Flask==0.12.2
sudo -H pip3 install folium==0.5.0
sudo -H pip3 install ggplot==0.11.5
sudo -H pip3 install guacamole==0.9.2
sudo -H pip3 install html5lib==1.0b10
sudo -H pip3 install httplib2==0.9.1
sudo -H pip3 install idna==2.0
sudo -H pip3 install ipykernel==4.6.1
sudo -H pip3 install ipython==6.2.1
sudo -H pip3 install ipython-genutils==0.2.0
sudo -H pip3 install ipywidgets==7.0.1
sudo -H pip3 install itsdangerous==0.24
sudo -H pip3 install jedi==0.11.0
sudo -H pip3 install Jinja2==2.9.6
sudo -H pip3 install jsonschema==2.6.0
sudo -H pip3 install jupyter==1.0.0
sudo -H pip3 install jupyter-client==5.1.0
sudo -H pip3 install jupyter-console==5.2.0
sudo -H pip3 install jupyter-core==4.3.0
sudo -H pip3 install jupyterhub==0.8.0
sudo -H pip3 install language-selector==0.1
sudo -H pip3 install louis==2.6.4
sudo -H pip3 install lxml==3.5.0
sudo -H pip3 install Mako==1.0.3
sudo -H pip3 install MarkupSafe==1.0
sudo -H pip3 install matplotlib==1.5.1
sudo -H pip3 install missingno==0.3.7
sudo -H pip3 install mistune==0.7.4
sudo -H pip3 install mpmath==0.19
sudo -H pip3 install nbconvert==5.3.1
sudo -H pip3 install nbformat==4.4.0
sudo -H pip3 install nose==1.3.7
sudo -H pip3 install notebook==5.2.0
sudo -H pip3 install numexpr==2.4.3
sudo -H pip3 install numpy==1.13.3
sudo -H pip3 install oauthlib==1.0.3
sudo -H pip3 install onboard==1.2.0
sudo -H pip3 install padme==1.1.1
sudo -H pip3 install pamela==0.3.0
sudo -H pip3 install pandas==0.17.1
sudo -H pip3 install pandasql==0.7.3
sudo -H pip3 install pandocfilters==1.4.2
sudo -H pip3 install parso==0.1.0
sudo -H pip3 install patsy==0.4.1
sudo -H pip3 install pexpect==4.2.1
sudo -H pip3 install pickleshare==0.7.4
sudo -H pip3 install Pillow==3.1.2
sudo -H pip3 install plainbox==0.25
sudo -H pip3 install prompt-toolkit==1.0.15
sudo -H pip3 install ptyprocess==0.5.2
sudo -H pip3 install pyasn1==0.1.9
sudo -H pip3 install pycups==1.9.73
sudo -H pip3 install pycurl==7.43.0
sudo -H pip3 install Pygments==2.2.0
sudo -H pip3 install pygobject==3.20.0
sudo -H pip3 install PyJWT==1.3.0
sudo -H pip3 install pyparsing==2.0.3
sudo -H pip3 install python-dateutil==2.4.2
sudo -H pip3 install python-editor==1.0.3
sudo -H pip3 install python-oauth2==1.0.1
sudo -H pip3 install python-systemd==231
sudo -H pip3 install pytz==2014.10
sudo -H pip3 install pyxdg==0.25
sudo -H pip3 install PyYAML==3.12
sudo -H pip3 install pyzmq==15.2.0
sudo -H pip3 install qtconsole==4.3.1
sudo -H pip3 install reportlab==3.3.0
sudo -H pip3 install requests==2.9.1
sudo -H pip3 install scikit-learn==0.19.0
sudo -H pip3 install scipy==0.19.1
sudo -H pip3 install seaborn==0.8.1
sudo -H pip3 install sessioninstaller==0.0.0
sudo -H pip3 install simplegeneric==0.8.1
sudo -H pip3 install six==1.11.0
sudo -H pip3 install SQLAlchemy==1.1.14
sudo -H pip3 install statsmodels==0.8.0
sudo -H pip3 install sympy==0.7.6.1
sudo -H pip3 install system-service==0.3
sudo -H pip3 install tables==3.2.2
sudo -H pip3 install terminado==0.6
sudo -H pip3 install testpath==0.3.1
sudo -H pip3 install tornado==4.5.2
sudo -H pip3 install traitlets==4.3.2
sudo -H pip3 install ubuntu-drivers-common==0.0.0
sudo -H pip3 install ufw==0.35
sudo -H pip3 install unattended-upgrades==0.1
sudo -H pip3 install urllib3==1.13.1
sudo -H pip3 install usb-creator==0.3.0
sudo -H pip3 install wcwidth==0.1.7
sudo -H pip3 install webencodings==0.5.1
sudo -H pip3 install Werkzeug==0.12.2
sudo -H pip3 install widgetsnbextension==3.0.3
sudo -H pip3 install WTForms==2.1
sudo -H pip3 install xdiagnose==3.8.4
sudo -H pip3 install xkit==0.0.0
sudo -H pip3 install XlsxWriter==0.7.3