function find-and-replace
if test (count $argv) -lt 3 || test (count $argv) -gt 4
echo Usage: find-and-replace {input_file} {output_file} {search_text} {replace_text}
echo Note: If output_file is not specified, the results will be echoed to the terminal.
return
end

if test (count $argv) = 4
sed s/$argv[3]/$argv[4]/g $argv[1] > $argv[2]
else
sed s/$argv[2]/$argv[3]/g $argv[1]
end
end
