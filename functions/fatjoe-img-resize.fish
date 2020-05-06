function fatjoe-img-resize
    set max_width 790
    for i in (find . -type f -not -path "./RESIZED/*" -name "*.png" -or -name "*.jpg")
        mkdir -p RESIZED
        set i_output ./RESIZED/(echo $i | sed "s/\.\///g" | sed "s/\//__/g")
        if test (identify -format '%w' $i) -le $max_width
            cp $i $i_output
            continue
        end
        convert $i -resize $max_width $i_output
    end

    for i in (find -type f -path "./RESIZED/*" -name "*.png")
        echo Optimizing $i...
        optipng -quiet $i
    end
    for i in (find -type f -path "./RESIZED/*" -name "*.jpg")
        echo Optimizing $i...
        jpegoptim --quiet $i
    end
end
