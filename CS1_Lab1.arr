use context starter2024

# 1) T-shirt pricing
BASE_PRICE = 12
SETUP_FEE = 3

fun tshirt_cost(n):
  (n * BASE_PRICE) + SETUP_FEE
end

check:
  tshirt_cost(5) is 63
  tshirt_cost(7) is 87
end

# 2) Poster Perimeter Pricing

RATE_PER_UNIT = 0.10

fun perimeter(width, height):
  2 * (width + height)
end

fun poster_cost(width, height):
  perimeter(width, height) * RATE_PER_UNIT
end

check:
  perimeter(10, 15) is 50
  poster_cost(10, 15) is 5.0
end

# 3) Strings

TAGLINE = "Designs for everyone!"

check:
  string-append("red", "blue") is "redblue"
  string-append(num-to-string(1), "blue") is "1blue"
end

# 4) Image Composition: Traffic Light

R = 30
DIAM = R * 2
SPACING = 15
MARGIN = 10

BODY_W = DIAM + (2 * MARGIN)
BODY_H = (DIAM * 3) + (2 * SPACING) + (2 * MARGIN)

body = rectangle(BODY_W, BODY_H, "solid", "black")

red_light    = circle(R, "solid", "red")
yellow_light = circle(R, "solid", "yellow")
green_light  = circle(R, "solid", "green")

spacer = rectangle(BODY_W, SPACING, "solid", "black")

lights_column =
  above(
    red_light,
    above(
      spacer,
      above(
        yellow_light,
        above(
          spacer,
          green_light))))


traffic_light = overlay(lights_column, body)

pole = rectangle(BODY_W / 4, 120, "solid", "gray")
traffic_light_with_pole = above(traffic_light, pole)

# 5) Debugging image function calls

good_rect = rectangle(50, 20, "solid", "black")

good_circle = circle(30, "solid", "red")


# 6) Creative Design Task

flag_bg    = rectangle(240, 160, "solid", "crimson")
flag_vert  = rectangle(40, 160, "solid", "white")
flag_horiz = rectangle(240, 40, "solid", "white")

flag_cross = overlay(flag_vert, flag_horiz)
flag       = overlay(flag_cross, flag_bg)

flag_label = text("Design Studio", 18, "black")
flag_labeled = above(flag, flag_label)


shield_base   = circle(100, "solid", "darkgreen")
shield_rhomb  = rotate(45, square(140, "outline", "gold"))
shield        = overlay(shield_rhomb, shield_base)

shield_label  = text("Shield", 18, "black")
shield_labeled = above(shield, shield_label)
