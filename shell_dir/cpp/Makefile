# 输入空格方式，insert模式下ctrl v，然后tab
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))

obj = main.o share.o
bin_name = main

# 当前目录所有c文件
# src := $(wildcard *.c)

# 递归搜索所有h和c文件
src = $(call rwildcard, ./, *.c *.h)

# 增加前缀，所有文件后缀改称o
dst := $(addprefix obj/seatest/, $(notdir $(src:.c=.o)))

$(bin_name) : $(obj)
	gcc -o main $(obj)
	echo $(src)
	echo $(dst)	

main.o : main.c share.h test.h
	gcc -c main.c

share.o : share.c share.h test.h
	gcc -c share.c

.PHONY : clean
clean :
	-rm $(bin_name) $(obj)  # 减号表示也许某些文件出现问题，但不要管继续做后面事情。

