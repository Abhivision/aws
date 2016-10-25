FROM abhivision/roboadvisor:f0
RUN git pull --rebase origin master
RUN pip install -r requirements.txt
export DJANGO_SETTINGS_MODULE=app.setting_postgres
python manage.py collectstatic --noinput -i admin
RUN npm install
RUN gulp`

