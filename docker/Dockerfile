FROM ruby:3.1.3-bullseye AS build
ENV JEKYLL_ROOTLESS=1
ENV GEM_HOME="/gems"
ENV PATH="/gems/bin:$PATH" 
RUN gem install jekyll bundler && \
  git clone --depth=1 https://github.com/sdu-concurrency/vamos-2023.git /git && \
  cd git/website && \
  bundle install && \
  bundle exec jekyll build -d /output_website

FROM jolielang/leonardo
ENV LEONARDO_WWW /web
COPY --from=build /output_website $LEONARDO_WWW
