function cpu-top-offenders
	ps -eo pcpu,pid,user,args | sort -k1 -r -n | head -10
end
