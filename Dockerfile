FROM aler9/rtsp-simple-server:v0.18.0 AS rtsp

FROM akashisn/ffmpeg:4.4.1-qsv
COPY --from=rtsp /rtsp-simple-server /
RUN apt-get update && apt install i965-va-driver -y
ENTRYPOINT [ "/rtsp-simple-server" ]
