FROM ruby:2.5

WORKDIR /usr/jekyll-src
COPY ./ .

RUN gem update --system
RUN bundle install
RUN jekyll build

FROM nginx
COPY --from=0 /usr/jekyll-src/_site /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
