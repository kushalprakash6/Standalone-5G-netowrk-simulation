#!/bin/bash

for i in {1..20}
do
	sudo ./build/nr-ue -c config/open5gs-ue.yaml -n 100
done	
