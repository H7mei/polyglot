#include "space_age.h"

float earth_age = 365.25 * 24 * 60 * 60;

float age(planet_t planet, int64_t seconds)
{
  float age = seconds / earth_age;
  switch (planet)
  {
  case EARTH:
    return age;
    break;
  case MERCURY:
    return age / 0.2408467;
    break;
  case VENUS:
    return age / 0.61519726;
    break;
  case MARS:
    return age / 1.8808158;
    break;
  case JUPITER:
    return age / 11.862615;
    break;
  case SATURN:
    return age / 29.447498;
    break;
  case URANUS:
    return age / 84.016846;
    break;
  case NEPTUNE:
    return age / 164.79132;
    break;
  }
  return -1;
}

int main()
{
  printf("%-6.2f Earth-years old\n", age(EARTH, 1000000000));
  printf("%-6.2f Earth-years old\n", age(MERCURY, 2134835688));
  printf("%-6.2f Earth-years old\n", age(VENUS, 189839836));
  printf("%-6.2f Earth-years old\n", age(MARS, 2129871239));
  printf("%-6.2f Earth-years old\n", age(JUPITER, 901876382));
  printf("%-6.2f Earth-years old\n", age(SATURN, 2000000000));
  printf("%-6.2f Earth-years old\n", age(URANUS, 1210123456));
  return 0;
}