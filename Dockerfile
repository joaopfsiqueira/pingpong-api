# Instala a imagem Node.js na minha imagem!
FROM node:latest

# define o diretório de trabalho para qualquer comando RUN, CMD, COPY
# os arquivos que colocamos no contêiner do Docker executando o servidor estarão em:
WORKDIR /usr/src/

# Copia package.json, package-lock.json, tsconfig.json, .env para a raiz de WORKDIR
COPY ["package.json", "./"]

# Copia tudo do diretório src para WORKDIR/src
COPY ./src ./src

# Instala todos os pacotes no container
RUN npm install

EXPOSE 1111

# Vai rodar o comando npm start, assim que nosso container criar a api já vai passar a rodar, sem necessitar de um npm start!
CMD npm run start