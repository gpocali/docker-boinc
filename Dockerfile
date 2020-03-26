FROM linuxserver/boinc
RUN apt-get update && apt-get install -y nut-client && apt-get clean
COPY /root /
RUN chmod +x /bin/nutENVconf && chmod +x /usr/bin/nutWait
CMD ["/bin/nutENVconf"]
