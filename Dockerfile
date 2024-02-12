# Use the official Ubuntu base image currently tagged 22.04
FROM ubuntu:22.04

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Install Python, pip, and other utilities
RUN apt-get update && apt-get install -y python3-pip python3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --upgrade pip

# Install Jupyter Notebook
RUN pip3 install notebook

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Set the working directory in the container
WORKDIR /usr/src/app

# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]