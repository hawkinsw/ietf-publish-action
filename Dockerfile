FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y python3 python3-pip ruby enscript git ghostscript
RUN python3 -m pip install --upgrade pip
RUN pip install xml2rfc
RUN gem install kramdown-rfc2629
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
