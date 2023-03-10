# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: idias-al <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/29 09:58:49 by idias-al          #+#    #+#              #
#    Updated: 2022/11/29 09:58:51 by idias-al         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OBJS_LIBFT		=	libft/ft_isalnum.o libft/ft_isalpha.o libft/ft_isascii.o libft/ft_isdigit.o \
					libft/ft_isprint.o libft/ft_memcmp.o libft/ft_putchar_fd.o libft/ft_split.o \
					libft/ft_strlcat.o libft/ft_strncmp.o libft/ft_substr.o libft/ft_atoi.o \
					libft/ft_itoa.o libft/ft_memcpy.o libft/ft_putendl_fd.o libft/ft_strchr.o libft/ft_strlcpy.o \
					libft/ft_strnstr.o libft/ft_tolower.o libft/ft_bzero.o  libft/ft_strmapi.o\
					libft/ft_memmove.o libft/ft_putnbr_fd.o libft/ft_strdup.o libft/ft_strlen.o libft/ft_strrchr.o\
					libft/ft_toupper.o libft/ft_calloc.o libft/ft_memchr.o libft/ft_memset.o \
					libft/ft_putstr_fd.o libft/ft_strjoin.o libft/ft_strtrim.o libft/ft_striteri.o

BONUS			=	libft/ft_lstadd_back.o libft/ft_lstadd_front.o libft/ft_lstclear.o \
					libft/ft_lstdelone.o libft/ft_lstiter.o libft/ft_lstlast.o \
					libft/ft_lstmap.o libft/ft_lstnew.o libft/ft_lstsize.o
OBJS			=	srcs/ft_printf.o srcs/ft_printhexa.o srcs/ft_print_simple.o srcs/ft_printunsigned.o srcs/ft_pointer.o
CC				= cc
RM				= rm -f
INCLUDES			= incs/
CFLAGS			= -Wall -Wextra -Werror -I $(INCLUDES)
NAME			= libftprintf.a

all:			$(NAME)

$(NAME):		$(OBJS)
				$(MAKE) bonus -C libft
				ar rcs $(NAME) $(OBJS) $(OBJS_LIBFT)

clean:
				$(MAKE) clean -C libft
				$(RM) $(OBJS)

fclean:			clean
				$(MAKE) fclean -C libft
				$(RM) $(NAME)

re:				fclean $(NAME)
