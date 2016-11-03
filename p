clear
fasm mzesolvr.asm mzesolvr.com
# ls -l demo.com | tr -s " " | cut -d" " -f5
exit
echo --
fswatch demo.asm \
	| xargs -n 1 \
	bash -c \
	"clear; nasm demo.asm -o demo.com ; sleep 1 ; ls -l demo.com | tr -s " " | cut -d" " -f5 ; sleep 1 ; echo --"
