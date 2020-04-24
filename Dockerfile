FROM python
COPY behave python-test/behave
RUN pip install behave
WORKDIR python-test/behave
RUN apt-get update
RUN ["apt-get","install","-y","vim"]
COPY ./run-test.sh test.sh
ENV tags=""
RUN chmod +x test.sh
CMD $tags
ENTRYPOINT ./test.sh