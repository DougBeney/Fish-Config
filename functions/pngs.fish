function pngs
	set start_dir "./"
if test "$argv[1]" != ""
set start_dir "$argv[1]"
end
find $start_dir  -type f -iname "*.png"
end
