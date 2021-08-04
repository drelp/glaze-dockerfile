#!/bin/sh

echo "fe_role:"$FE_ROLE
echo "leader:"$FE_LEADER

if [[ $FE_ROLE = 'fe-leader' ]]; then
    sh /home/doris/fe/bin/start_fe.sh --daemon
elif [[ $FE_ROLE = 'be' ]]; then
    /home/doris/be/bin/start_be.sh
elif [[ $FE_ROLE = 'fe-follower' ]]; then
    /home/doris/fe/bin/start_fe.sh --helper $FE_LEADER
else
    /home/doris/fs_broker/bin/start_broker.sh
fi

while [ 1 ]
do
    sleep 1
done
