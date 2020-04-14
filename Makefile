NAME = libasm.a

SRCS = ft_strlen ft_strcmp ft_strcpy ft_read ft_write ft_strdup
OBJS =  $(addsuffix .o, $(SRCS))
FILES = $(addsuffix .s, $(SRCS))

all : $(NAME)

%.o : %.s
		nasm -f elf64 $< -o $@
$(NAME): $(OBJS)
		ar rc $(NAME) $(OBJS)
		ranlib $(NAME)

test : $(OBJS)
		gcc main.c $(NAME) -o test

clean :
	@rm -f *.o

fclean : clean
	@rm -f test
	@rm -f  $(NAME)

re : clean fclean $(NAME)