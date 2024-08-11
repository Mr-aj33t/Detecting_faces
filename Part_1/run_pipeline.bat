@echo off

gst-launch-1.0 filesrc location="C:\\Users\\ajeet\\Downloads\\NewTask\\1.mp4" ! ^
  qtdemux name=demux ! ^
  queue ! ^
  decodebin ! ^
  videoscale ! ^
  video/x-raw, width=640, height=640 ! ^
  jpegenc ! ^
  multifilesink location="frames\\frame_%%d.jpg"