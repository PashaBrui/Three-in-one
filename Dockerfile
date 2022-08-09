FROM node:14.15.0

RUN git clone https://github.com/LotfiMEZIANI/Three-in-one-blog-post
COPY app.module.ts ./Three-in-one-blog-post/src/app/
WORKDIR ./Three-in-one-blog-post
#COPY package*.json ./

RUN npm install


RUN npm run build

ENV PORT 4200

EXPOSE $PORT
CMD ["npm","start"]
