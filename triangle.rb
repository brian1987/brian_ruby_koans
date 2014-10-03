# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  raise TriangleError if a <= 0 || a + b <= c
  [nil, :equilateral, :isosceles, :scalene][[a, b, c].uniq.size]
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
  
end

#PREVIOUS TRIANGLE CODE
# def  triangle(a, b, c)
# if 
  #   a == b && b == c && c == a
  #   return :equilateral
  # elsif
  #   a == b || b == c || c == a
  #   return :isosceles
  # elsif
  #   a == 0 && b == 0 && c == 0
  #   raise TriangleError, "Triangles can't have 0 on sides"
  # elsif
  #   a == 3 && b == 4 && c == -5
  #   raise TriangleError, "Triangles can't have negatives on sides"
  # elsif
  #   a == 1 && b == 1 && c == 3
  #   raise TriangleError, "Triangle sides A & B can't be equal"
  # elsif
  #   a == 1 && b == 1 && c == 3
  #   raise TriangleError, "Triangle sides A & C can't be equal"
  #below are dimensions in error testing
  # (3, 4, -5) 
  # (1, 1, 3)
  # (2, 4, 2) 
  # else
  #   return :scalene
  # end