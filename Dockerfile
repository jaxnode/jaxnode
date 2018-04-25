FROM mhart/alpine-node:10.0.0

RUN npm install -g yarn

RUN mkdir /src

COPY package.json /src
WORKDIR /src
RUN yarn

# Add your source files
COPY . /src  
CMD ["npm","start"]