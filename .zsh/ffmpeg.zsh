fp() {
	mov_file=$1
	gif_file=$2

	ffmpeg -i $mov_file -filter_complex "[0:v] fps=10,scale=640:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" $gif_file
}
