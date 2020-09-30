cd /workspace &&\
   make server &&\
   nohup bin/tidb-dashboard --debug --experimental --host 0.0.0.0 &
cd ui &&\
   yarn &&\
   yarn start