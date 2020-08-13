FROM jekyll/minimal:4.0

COPY ./ /srv/jekyll
CMD ["jekyll", "serve", "-P", "8080", "-H", "0.0.0.0"]

