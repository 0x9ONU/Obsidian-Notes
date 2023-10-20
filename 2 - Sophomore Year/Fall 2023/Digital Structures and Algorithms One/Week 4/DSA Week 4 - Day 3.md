Date: 15th September 2023
Date Modified: 15th September 2023
File Folder: Week 4
#DSA1

```ad-abstract
title: Today's Topics
collapse: open

- Linked List Implementation

```

```ad-note
title: Homework
- [ ] HW 2📅 2023-09-20 
```

# Jahan's Linked List Implementation

## Operations on Dynamic Sets 

- Appending a node
	- add the node to the end of the list
- Traversing the list
	- The process of going through the entire list beginning at the head while doing some processing at each node
- Inserting a node
	- Inserting a new node in the list
- Deleting a node
	- Deleting an existing node from the list
- Destroying the list
	- Deleting each node of the list

## Update Class Body

```c++ 
class StudentLL // Studnet Linked List Class Name, LL for LInked LIst
{
	private:
		struct node
		{
			string keyItems; //key data member (used for sorting, search, etc.)
			int numItems; //satellite data member 9numbe ro keyItems)
			float price; // satellite data member
			node* next; // linking member
			//default node constructor
			node() {
				key Items = "";
				numItems = 0;
				price = 0;
				next = NULL;
			}
			//CONSTRUCTOR
			node (string key, int num, float value, node *next1 = NULL) {
				key Items = key;
				numItems = num;
				price = value;
				next = next1;
			}
		};
		node* head; // points to the first node of the linked list
	public:
		StudentLL() {head = NULL;} //Default Constructor
		~StudentLL(); //Destructor
		void appendNode(string, int, float);
		void insertNode(string, int , float);
		void deleteNode(string);
		void displayList();
}
```

## Append

```c++
//Appending a new node at the end of the list

void StudnetLL::appendNode(string obj, int num, float val) {
	if (head == NULL)
		head = new node(obj, num, val);
	else {
		//non empty list
		node *nodePtr;
		nodePtr = head;
		//traverse the list to locate last node
		while (nodePtr->next != NULL)
			nodePtr = nodePtr->next;
		//now at end of the linked list
		nodePtr->next = new node(obj, num, val);
	}
}
```

```ad-note
title: The `->` Operator
Combines dereferencing with the member access funciton
```c++
//These line are identical
nodePtr->next;
(*nodePtr).next;
```

#comebacklater ex. 1
## Insert

Inserts a new node in the beginning or in the list, building a sorted list with the `numItems` in ascending order

```c++
void StudentLL::insertNode(string obj, int num, float val) 
{
	node* nodePtr, *prevNodePtr;
	if (head == NULL || head->numItems >= num) {
		head = new node(obj, num, val, head);
	}
	else {
		prevNodePtr = head;
		nodePtr = head->next;
		//find the insertion point
		while (nodePtr != NULL && nodePtr ->numItems < num) {
			prevNodePtr = nodePtr;
			nodePtr = nodePtr->next;
		}
		//create new node and insert it just before the nodePtr
		prevnodePtr->next = new node(obj, num, val, nodePtr);
	}
}
```

```ad-note
If the first case of an `||` operator is True OR the first case of the `&&` operator is False, it short circuits and either automatically skips or runs the body of the `while` loop or `if` statement.
```

#comebacklater  ex. 2

## Delete

```c++
void StudentLL::deleteNode(string key) {
	node* nodePtr, *prevNodePtr;
	if (!head) // if empty list (note that NULL == 0) {
		return;
	}
	
	//If it is the first node to be deleted
	if head->keyItems == key) {
		nodePtr = head;
		head = head->next;
		delete nodePtr;
	}
	else {
		nodePtr = head;
		//Skip all nodes whose KeyItems is not euqal to key
		while (nodePtr != NULL && nodePtr->keyItems != key)
		{
			prevNodePtr = nodePtr;
			nodePtr = nodePtr->next;
		}
	}
	//Link prev node to the ndoe after nodePtr, then delete nodePtr
	if (nodePtr) // only delete if key is found 
	{
		prevNodePtr->next = nodePtr->;
		delete nodePtr;
	}
}
```

#comebacklater ex. 4
#comebacklater ex. 5

## Display

```c++
void StudentLL::displayList()
{
	node* nodePtr;
	nodePtr = head;
	while (nodePtr) 
	{
		cout << "Key Items: " << nodePtr->keyItems << endl;
		cout << "NumtItems: " << nodePtr->numItems << endl;
		cout << "Price: " << nodePtr->price << endl;
		nodePtr = nodePtr->next;
	}
}
```

## Destroy

```c++
StudentLL::~StudentLL() {
	node *nodePtr, *nextNodePtr;
	nodePtr = head;
	while (nodePtr != NULL) {
		nextNOdePtr = nodePtr->next;
		delete nodePtr;
		nodePtr = nextNodePtr;
	}
}
```

