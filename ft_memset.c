/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gferreir <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/22 11:43:28 by gferreir          #+#    #+#             */
/*   Updated: 2018/05/31 11:41:24 by gferreir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
	int				i;
	unsigned char	*j;

	i = 0;
	j = (unsigned char *)b;
	while ((size_t)i < len)
	{
		j[i] = (unsigned char)c;
		i++;
	}
	return (b);
}
