FROM python:3.10-slim-buster

#  Inside Container
# Make a new folder inside container
WORKDIR /backend-flask

# Outside Container -> Inside Container
# this contains the libraries we want to install to run the app
COPY requirements.txt requirements.txt

# Inside Container
# Install the python libraries used for the app
RUN pip3 install -r requirements.txt

# Outside Container -> Inside Container
# . means everything in the current directory
# first period . - /backend-flask (outside container)
# second period ./backend-flask (inside container)
COPY . .

# configure environment variable (Env Vars)
# Inside container and will remain set when the container is running
ENV FLASK_ENV=development

EXPOSE ${PORT}

CMD ["./myscript.sh"]