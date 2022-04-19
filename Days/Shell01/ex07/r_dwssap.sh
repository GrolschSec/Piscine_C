# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    r_dwssap.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rlouvrie <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/08 16:42:27 by rlouvrie          #+#    #+#              #
#    Updated: 2022/03/08 21:27:40 by rlouvrie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cat /etc/passwd | cut -f 1 -d ':' | awk 'NR%2==0' | rev | sort -r | sed -n "${FT_LINE1},${FT_LINE2}p" | tr "\n" ", " | sed "s/,/, /g" | sed 's/, $/./'