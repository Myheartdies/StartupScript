
#!/bin/bash
gnome-terminal -- bash -c "GLOG_logtostderr=1 ./coordinator; exec bash"
sleep 1
gnome-terminal -- bash -c "GLOG_logtostderr=1 ./tsd -c 1 -s 1 -p 9010; exec bash"
gnome-terminal -- bash -c "GLOG_logtostderr=1 ./tsd -c 2 -s 2 -p 9020; exec bash"
sleep 5
gnome-terminal -- bash -c "GLOG_logtostderr=1 ./tsc -u 2; exec bash"
gnome-terminal -- bash -c "GLOG_logtostderr=1 ./tsc -u 1; exec bash"
