docker run -d -p 80:8080 -v $(pwd)/index.html:/usr/local/apache2/htdocs/index.html -v $(pwd)/httpd.conf:/usr/local/apache2/conf/httpd.conf httpd
