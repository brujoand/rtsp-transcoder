FROM aler9/rtsp-simple-server:v0.18.0 AS rtsp

FROM akashisn/ffmpeg:5.0-qsv
COPY --from=rtsp /rtsp-simple-server /
ENTRYPOINT [ "/rtsp-simple-server" ]
