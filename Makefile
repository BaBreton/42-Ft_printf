

SRC = ft_printf.c ft_printf_utils.c

OBJS = $(SRC:.c=.o)

GCC = gcc -Wall -Werror -Wextra

RM = rm -f

NAME = libftprintf.a

all: $(NAME)

$(NAME): $(OBJS)
	@echo "\033[1;30m╭───────────────────────────────────╮\033[0m"
	@echo "\033[1;30m│  \033[0m\033[0;32mArchive file has been created.\033[1;30m   │\033[0m"
	@echo "\033[1;30m╰───────────────────────────────────╯\033[0m"
	@ar rcs $(NAME) $(OBJS)

%.o: %.c
	@$(GCC) -I ./c -c $< -o $@
	@echo "\033[0;32mObject file $@ has been created.\033[0m"

clean:
	@echo "\033[0;31mObject files have been removed.\033[0m"
	@$(RM) $(OBJS)

fclean:
	@$(RM) $(NAME) $(OBJS)
	@echo "\033[0;31m\033[1mArchive and object files have been removed.\033[0m"

re:
	@$(MAKE) -s fclean > /dev/null
	@$(MAKE) -s all > /dev/null
	@echo "\033[0;33mFiles have been rebuilt."


.PHONY: all clean fclean re