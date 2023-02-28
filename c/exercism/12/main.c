#include "robot_simulator.h"

robot_status_t robot_create(robot_direction_t direction, int x, int y)
{
  return (robot_status_t){.direction = direction, .position = {.x = x, .y = y}};
}

void robot_move(robot_status_t *robot, const char *commands)
{
  for (const char *command = commands; *command; ++command)
  {
    switch (*command)
    {
    case 'R':
      robot->direction = (robot->direction + 1) % DIRECTION_MAX;
      break;
    case 'L':
      robot->direction = (robot->direction + DIRECTION_MAX - 1) % DIRECTION_MAX;
      break;
    case 'A':
      if (robot->direction % 2)
      {
        robot->position.x += 2 - robot->direction;
      }
      else
      {
        robot->position.y += 1 - robot->direction;
      }
      break;
    default:
      return;
    }
  }
}

int main()
{
  robot_status_t expected = {DIRECTION_NORTH, {7, 3}};
  robot_status_t actual = robot_create(DIRECTION_NORTH, 0, 0);

  robot_move(&actual, "RAALAL");

  printf("{%d, %d}\n", expected.position.x + actual.position.x, expected.position.y + actual.position.y);

  return 0;
}