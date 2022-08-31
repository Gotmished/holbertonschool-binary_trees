#include "binary_trees.h"

/**
 * binary_tree_height - measures the height of a binary tree
 * @tree: a pointer to the root node of a tree
 * Return: the number of levels that the tree has
 * or, 0 if the tree is NULL
 */

size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t i, j;

	if (tree == NULL)
	{
		return (0);
	}
	else
	{
		i = binary_tree_height(tree->left);
		j = binary_tree_height(tree->right);
		if (i >= j)
		{
			return (i + 1);
		}
		else
		{
			return (j + 1);
		}
	}
}
