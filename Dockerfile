FROM linuxserver/docker-boinc
RUN apt-get update && apt-get install -y nut-client && apt-get clean
COPY /root /
RUN chmod +x /bin/nutENVconf && chmod +x /usr/bin/nutWait && chmod +x /bin/nutEndWait
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/nutENVconf"]
