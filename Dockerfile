FROM httpd:2.4.46
RUN sed -i '1c#!/usr/bin/perl' /usr/local/apache2/cgi-bin/printenv
RUN chmod +x /usr/local/apache2/cgi-bin/printenv
COPY ./desafio01.sh /usr/local/apache2/cgi-bin
CMD httpd-foreground -c "LoadModule cgid_module modules/mod_cgid.so"
EXPOSE 80
WORKDIR /usr/local/apache2/cgi-bin