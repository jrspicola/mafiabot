FROM python:3

WORKDIR /mafia/apprunner/mafiabot

USER root

# Copy and Install dependencies to allow Docker to cache them
# and not change based on changes to full project
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD ["bash"]
