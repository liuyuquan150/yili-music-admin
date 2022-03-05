FROM node:lts-alpine as build-stage
# 指定工作目录
WORKDIR /app
# 拷贝包管理文件
COPY package*.json ./
# npm 安装依赖
RUN npm install
COPY . .
RUN npm run build

FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon", "off;", "npm", "start"]