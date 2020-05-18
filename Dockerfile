FROM alpine:3.9
RUN apk add --no-cache nginx && \
  apk add texlive-full ghostscript wget
RUN wget https://raw.githubusercontent.com/erikmaarten/shrinkpdf/468afc9ec2cf66c52866eb91329652a9085a24f0/shrinkpdf.sh -O - > /usr/bin/shrinkpdf && chmod a+x /usr/bin/shrinkpdf
