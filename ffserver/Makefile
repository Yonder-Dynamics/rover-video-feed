

server:
	ffserver -f ffserver.conf

encoding:
	ffmpeg -thread_queue_size 512 -f video4linux2 -s 640x480 -r 25 -i /dev/video1 -f alsa -i pulse -threads 4 http://localhost:8090/feed1.ffm

