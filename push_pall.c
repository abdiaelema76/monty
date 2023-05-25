#include "monty.h"

/**
 * push - function that pushes a value to the stack
 * @stack: stack
 * @line_number: line number
 * @value: value to be pushed
 */

void push(stack_t **stack, unsigned int line_number, char *value)
{
	stack_t *node = malloc(sizeof(stack_t));
	int x;

	if (value == NULL)
	{
		fprintf(stderr, "L%d: usage: push integer\n", line_number);
		free_stack(*stack);
		exit(EXIT_FAILURE);
	}
	x = atoi(value);
	node->n = x;
	node->prev = NULL;
	node->next = *stack;

	if (*stack != NULL)
		(*stack)->prev = node;
	*stack = node;
}

/**
 * pall - prints all values on the stack
 * @stack: stack
 * @line_number: line number
 */

void pall(stack_t **stack, __attribute__((unused)) unsigned int line_number)
{
	stack_t *node = *stack;

	while (node != NULL)
	{
		printf("%d\n", node->n);
		node = node->next;
	}
}

