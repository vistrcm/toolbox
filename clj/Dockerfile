FROM clojure:tools-deps

WORKDIR /app
COPY deps.edn ./deps.edn
RUN clj -P
ENTRYPOINT ["clj"]
CMD ["-M:nREPL"]
