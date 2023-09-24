for li in `find clear_txt -type f -name "*.txt"`
do
    filepath=${li%/*};
    filename=${li##*/};
    filepath=${filepath/clear_txt/encode};
    # echo $filepath;
    mkdir -p $filepath;
    outfile=$filepath/$filename
    # echo $outfile;
    base64 -i $li -o $outfile;
    echo "encode $li to $outfile with base64";
done