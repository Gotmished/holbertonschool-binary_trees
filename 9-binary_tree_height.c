#include "binary_trees.h"

/**
 * binary_tree_is_leaf - checks if a node is a leaf
 * @node: a pointer to the node in question
 * Return: 1 if the node is a leaf, 0 otherwise
 */

int binary_tree_is_leaf(const binary_tree_t *node)
{
	if (node == NULL)
	{
		return (0);
	}

	if (node->left == NULL && node->right == NULL)
	{
		return (1);
	}
	return (0);
}

/**
 * binary_tree_height - measures the height of a binary tree
 * @tree: a pointer to the root node of a tree
 * Return: the number of levels that the tree has
 * or, 0 if the tree is NULL
 */

size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t left, right;

	if (tree == NULL)
		return (0);

	left = binary_tree_height(tree->left);
	right = binary_tree_height(tree->right);

	if (binary_tree_is_leaf(tree))
		return (0);

	if (left > right)
		return (left + 1);
	else
		return (right + 1);
}
