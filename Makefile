NAME = test

SRCS = ft_strlen ft_strcmp ft_strcpy ft_read ft_write ft_strdup
OBJS =  $(addsuffix .o, $(SRCS))
FILES = $(addsuffix .s, $(SRCS))

all : $(NAME)

%.o : %.s
		nasm -f elf64 $< -o $@

$(NAME) : $(OBJS)
		gcc $(OBJS) main.c -o test

clean :
	rm -f *.o

fclean : clean
	rm -f test

re : clean fclean $(NAME)