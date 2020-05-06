function biggest-files
    set starting_dir $argv[1]
    set output_file $argv[2]

    if test "$starting_dir" = ''
        set starting_dir ./
    end
    if test "$output_file" = ''
        set output_file biggest-files.txt
    end
    if test -f $output_file
        cp -b $output_file $output_file.bkup
        echo "" > $output_file
    end

    echo "Howdy! I'll be looking for your biggest files, starting at"
    echo "the directory $starting_dir. The results will be saved at"
    echo "$output_file"

    find $starting_dir -type f | xargs -d'\n' du -h | tee -a $output_file

    echo "Analyzed all files!"
    echo ""
    echo "Let me just quickly sort that output file for you so it"
    echo "will be nice and easy to read."
    sort $output_file -hro $output_file
    echo ""
    echo "Done! You may view the results at $output_file"
end
