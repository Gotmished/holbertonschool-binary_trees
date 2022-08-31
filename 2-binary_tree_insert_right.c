#include "binary_trees.h"

/**
 * binary_tree_insert_right - inserts a node as the right-child
 * of another node
 * @parent: a pointer to the node from which the insertion occurs
 * @value: the value stored in the new node
 * Return: a pointer to the node created
 */

binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)
{
	binary_tree_t *new;

	if (parent == NULL)
	{
		return (NULL);
	}

	new = binary_tree_node(parent, value);
	if (new == NULL)
	{
		return (NULL);
	}

	new->right = parent->right;
	if (new->right != NULL)
	{
		new->right->parent = new;
	}
	parent->right = new;
	return (new);
}
