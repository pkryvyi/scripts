#/bin/bash
redis-cli -h memorystore.utils -p 6379 -n 1 --scan | while read -r LINE ; do
	TTL=`redis-cli -h memorystore.utils -p 6379 -n 1 ttl "$LINE"`;
	if [ $TTL -eq  -1 ]; then echo "$LINE"; fi;
done;
