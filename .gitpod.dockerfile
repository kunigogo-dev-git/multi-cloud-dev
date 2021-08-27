FROM gitpod/workspace-full

USER root
# for vercel 
RUN ["npm", "install", "-g", "http-server"]
RUN ["npm", "install", "-g", "vercel"]

# for netlify-lambda
RUN ["npm", "install", "-g", "netlify-lambda"]

# for heroku cli
RUN curl https://cli-assets.heroku.com/install.sh | sh
RUN chown -R gitpod:gitpod /home/gitpod/.cache/heroku

# Install custom tools, runtime, etc.
RUN curl -sL https://ibm.biz/idt-installer | bash

RUN chown -R gitpod:gitpod /home/gitpod/.bluemix
RUN chown -R gitpod:gitpod /home/gitpod/.bluemix/plugins

USER gitpod


# cloudflare workers
RUN ["npm", "install", "@cloudflare/wrangler"]

