CC=gcc
CFLAGS=-Wall -Werror -Wextra -pedantic -std=gnu89 -g
RM=rm -rf
SRC=binary_tree_print.c
BETTY=betty

TARGET0=0-node
SRC0=	0-main.c \
	0-binary_tree_node.c

TARGET1=1-left
SRC1=	1-main.c \
	1-binary_tree_insert_left.c \
	0-binary_tree_node.c

TARGET2=2-right
SRC2=	2-main.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET3=3-del
SRC3=	3-main.c \
	3-binary_tree_delete.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET4=4-leaf
SRC4=	4-main.c \
	4-binary_tree_is_leaf.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET5=5-root
SRC5=	5-main.c \
	5-binary_tree_is_root.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET6=6-pre
SRC6=	6-main.c \
	6-binary_tree_preorder.c \
	0-binary_tree_node.c

TARGET7=7-in
SRC7=	7-main.c \
	7-binary_tree_inorder.c \
	0-binary_tree_node.c

TARGET8=8-post
SRC8=	8-main.c \
	8-binary_tree_postorder.c \
	0-binary_tree_node.c

TARGET9=9-height
SRC9=	9-main.c \
	9-binary_tree_height.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET10=10-depth
SRC10=	10-main.c \
	10-binary_tree_depth.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET11=11-size
SRC11=	11-main.c \
	11-binary_tree_size.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET12=12-leaves
SRC12=	12-main.c \
	12-binary_tree_leaves.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET13=13-nodes
SRC13=	13-main.c \
	13-binary_tree_nodes.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

STDSRC= 0-binary_tree_node.c \
	1-binary_tree_insert_left.c \
	2-binary_tree_insert_right.c \
	3-binary_tree_delete.c \
	4-binary_tree_is_leaf.c \
	5-binary_tree_is_root.c \
	6-binary_tree_preorder.c \
	7-binary_tree_inorder.c \
	8-binary_tree_postorder.c \
	9-binary_tree_height.c \
	10-binary_tree_depth.c\
	11-binary_tree_size.c \
	12-binary_tree_leaves.c \
	13-binary_tree_nodes.c \
	14-binary_tree_balance.c \
	15-binary_tree_is_full.c \
	16-binary_tree_is_perfect.c \
	17-binary_tree_sibling.c \
	18-binary_tree_uncle.c

all:	0 1 2 3 4 5 6 7 8 9 10 11 12 13

clean:
	$(RM) *~ \#*\# \.\#* \
		$(TARGET0) $(TARGET1) $(TARGET2) $(TARGET3) $(TARGET4) \
		$(TARGET5) $(TARGET6) $(TARGET7) $(TARGET8) $(TARGET9) \
		$(TARGET10) $(TARGET11) $(TARGET12) $(TARGET13)

re:		clean all

betty:
	$(BETTY) $(STDSRC)

0:
	$(CC) $(CFLAGS) $(SRC) $(SRC0) -o $(TARGET0)

1:
	$(CC) $(CFLAGS) $(SRC) $(SRC1) -o $(TARGET1)

2:
	$(CC) $(CFLAGS) $(SRC) $(SRC2) -o $(TARGET2)

3:
	$(CC) $(CFLAGS) $(SRC) $(SRC3) -o $(TARGET3)

4:
	$(CC) $(CFLAGS) $(SRC) $(SRC4) -o $(TARGET4)

5:
	$(CC) $(CFLAGS) $(SRC) $(SRC5) -o $(TARGET5)

6:
	$(CC) $(CFLAGS) $(SRC) $(SRC6) -o $(TARGET6)

7:
	$(CC) $(CFLAGS) $(SRC) $(SRC7) -o $(TARGET7)

8:
	$(CC) $(CFLAGS) $(SRC) $(SRC8) -o $(TARGET8)

9:
	$(CC) $(CFLAGS) $(SRC) $(SRC9) -o $(TARGET9)

10:
	$(CC) $(CFLAGS) $(SRC) $(SRC10) -o $(TARGET10)

11:
	$(CC) $(CFLAGS) $(SRC) $(SRC11) -o $(TARGET11)

12:
	$(CC) $(CFLAGS) $(SRC) $(SRC12) -o $(TARGET12)

13:
	$(CC) $(CFLAGS) $(SRC) $(SRC13) -o $(TARGET13)
