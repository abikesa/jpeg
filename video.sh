# Convert to gif (good for short clips)
ffmpeg -i nonself-self-ubuntu.MOV -vf "scale=480:-1" -r 10 nonself.gif

# Or to mp4 (for external hosting or GitHub Pages)
ffmpeg -i nonself-self-ubuntu.MOV -vcodec libx264 -crf 25 nonself.mp4
