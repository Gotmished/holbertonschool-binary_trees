#include "binary_trees.h"

/**
 * binary_tree_balance - measures the balance
 * factor of a binary tree
 * @tree: a pointer to the root node
 * of the tree in question
 * Return: the balance factor
 */

int binary_tree_balance(const binary_tree_t *tree)
{
	int h_right, h_left;

	if (tree == NULL)
	{
		return (0);
	}

	h_right = binary_tree_height(tree->right);
	h_left = binary_tree_height(tree->left);
	return (h_left - h_right);
}

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

/**
 * binary_tree_is_perfect - checks if a binary tree is perfect
 * @tree: a pointer to the root node of the tree to check
 * Return: 1 if perfect, 0 otherwise
 */

int binary_tree_is_perfect(const binary_tree_t *tree)
{
	int left, right, h;

	if (tree == NULL)
	{
		return (0);
	}

	h = binary_tree_height(tree);

	while (h >= 0)
	{
		left = binary_tree_balance(tree->left);
		right = binary_tree_balance(tree->right);
		if (left != 0 || right != 0)
		{
			return (0);
		}
		h = h - 1;
	}
	return (1);
}
