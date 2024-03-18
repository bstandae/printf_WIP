# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bstandae <bstandae@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 18:38:15 by bstandae          #+#    #+#              #
#    Updated: 2024/01/22 18:56:44 by bstandae         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			=

OBJS			=	${SRCS:%.c=${OBJ_DIR}%.o}

HEAD			=	libftprintf.h

OBJ_DIR			=	libftprintf_objects/

MAKE_DIR		=	mkdir -p ${@D}

CC				=	cc

AR_RCS			=	ar rcs

RM				=	rm -rf

CFLAGS			=	-g -Wall -Wextra -Werror

NAME			=	libftprintf.a

all:			${NAME}

${NAME}:		${OBJS} ${HEAD}
				${AR_RCS} ${NAME} ${OBJS}

${OBJ_DIR}%.o:	%.c
				${MAKE_DIR}
				${CC} ${CFLAGS} -c $< -I ${HEAD} -o $@

clean:
				${RM} ${OBJ_DIR}

fclean:			clean
				${RM} ${NAME}

re:				fclean all

.PHONY:			all clean fclean re
