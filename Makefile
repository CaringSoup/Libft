# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gferreir <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/01 12:41:15 by gferreir          #+#    #+#              #
#    Updated: 2018/06/22 11:00:09 by gferreir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
OBJ = ft_atoi.o ft_bzero.o ft_isalnum.o ft_isalpha.o ft_isascii.o ft_isdigit.o \
	  ft_isprint.o ft_memalloc.o ft_memccpy.o ft_memchr.o ft_memcmp.o \
	  ft_memcpy.o ft_memdel.o ft_memmove.o ft_memset.o ft_putchar.o \
	  ft_putchar_fd.o ft_putendl.o ft_putendl_fd.o ft_putnbr.o ft_putnbr_fd.o \
	  ft_putstr.o ft_putstr_fd.o ft_strcat.o ft_strchr.o ft_strclr.o \
	  ft_strcmp.o ft_strcpy.o ft_strdel.o ft_strdup.o ft_strequ.o ft_striter.o \
	  ft_striteri.o ft_strjoin.o  ft_strlen.o ft_strmap.o ft_strsplit.o \
	  ft_strmapi.o ft_strncat.o ft_strncmp.o ft_strncpy.o ft_strnequ.o \
	  ft_strnew.o ft_strnstr.o ft_strrchr.o ft_strlcat.o ft_itoa.o \
	  ft_strstr.o ft_strsub.o ft_strtrim.o ft_tolower.o ft_toupper.o \
	  ft_swap.o ft_strrev.o ft_whitespaces.o ft_strndup.o ft_word_counter.o \
	  ft_lstnew.o ft_lstdelone.o ft_lstdel.o ft_lstadd.o ft_lstiter.o \
	  ft_lstmap.o
CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ): %.o: %.c libft.h 
	gcc -c $*.c -o $@ $(CFLAGS)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
