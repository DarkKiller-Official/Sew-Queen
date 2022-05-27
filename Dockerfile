FROM ravindu01manoj/sewqueen:fullcontrol

RUN git clone https://github.com/ravindu01manoj/Sew-Queen/tree/dfd3f0faeaf9cc55d3ccb524e392a1fa3c9c07bf /root/QueenSewWhatsappBot
WORKDIR /root/QueenSewWhatsappBot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "sew.js"]
