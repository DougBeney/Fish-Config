function brightness
    set dir "/sys/class/backlight/intel_backlight/"
    set max (cat $dir/max_brightness)
    set cur (cat $dir/brightness)
    set op $argv[1]

    if test "$op" -ge "$op" 2> /dev/null
        set new (math $cur + "$op")
        if test "$new" -gt "$max"
            set new $max
        else if test "$new" -le 0
            set new 0
        end
        echo $new | sudo tee $dir/brightness
        echo Brightness level: $new/$max
    else
        echo Must provide positive or negative number
    end
end
