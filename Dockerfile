FROM n8nio/n8n:latest

USER root
COPY ["Automated Supply Chain Reorder System.json", "/tmp/workflow.json"]
RUN n8n import:workflow --input=/tmp/workflow.json

USER node
