FROM debian:bookworm-slim AS downloader

RUN apt-get update && apt-get install -y unzip

COPY ./_engine/Godot_v4.3-stable_linux.x86_64.zip .
# or:
# RUN apt-get install -y wget
# RUN wget -q https://github.com/godotengine/godot-builds/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip

RUN unzip -q -d /usr/bin/ Godot_v4.3-stable_linux.x86_64.zip
RUN mv /usr/bin/Godot_v4.3-stable_linux.x86_64 /usr/bin/godot

FROM debian:bookworm-slim

WORKDIR /app/

COPY --from=downloader /usr/bin/godot /usr/bin/godot

RUN apt-get update && apt-get install -y libfontconfig

CMD godot
