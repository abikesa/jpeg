ffmpeg -i "./images/nonself-self-ubuntu.MOV" -vcodec libx264 -crf 25 nonself.mp4
ffmpeg -i images/nonself-self-ubuntu.MOV -vf "scale=480:-1" -r 10 images/nonself.gif
