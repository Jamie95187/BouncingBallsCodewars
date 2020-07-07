# Bouncing Balls (6 KYU)

Solving [this](https://www.codewars.com/kata/5544c7a5cb454edb3c000047/train/ruby) codewars challenge.

## Description

A child is playing with a ball on the nth floor of a tall building. The height of this floor, *h*, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window including when it's falling and bouncing?

### Three conditions must be met for a valid experiment:

- Float parameter "h" in meters must be greater than 0
- Float parameter "bounce" must be greater than 0 and less than 1
- Float parameter "window" must be less than h.

If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

### Note:

The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

## Examples
```
- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1

(Condition 2) not fulfilled).
```
## Tests

Using red, green refactor TDD cycle to test drive towards a solution.

```
it('should return -1') do
  expect(ball.bounce(0, 0.5, 1)).to eq -1
  expect(ball.bounce(1, 0.66, 2)).to eq -1
  expect(ball.bounce(3, 1, 1)).to eq -1
  expect(ball.bounce(5, -1, 1.5)).to eq -1
end

it('should return 1') do
  expect(ball.bounce(3, 0.5, 1.6)).to eq 1
  expect(ball.bounce(2, 0.5, 1.0)).to eq 1
end

it('should return 3') do
  expect(ball.bounce(3, 0.5, 1.4)).to eq 3
end

it('should return 5') do
  expect(ball.bounce(3, 0.5, 0.7)).to eq 5
end

it('should return 15') do
  expect(ball.bounce(30, 0.66, 1.5)).to eq 15
end

it('should return 21') do
  expect(ball.bounce(30, 0.75, 1.5)).to eq 21
end
```
