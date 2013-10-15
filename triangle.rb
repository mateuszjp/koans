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
  #abc = []
  #abc << (a == b ? 1 : 0) 
  #abc << (a == c ? 1 : 0)
  #abc << (b == c ? 1 : 0)
  
  #g = abc.count{|x|x==1}
  
  #return :equilateral if g == 3
  #return :isosceles if g == 1 
  #return :scalene if g == 0
  
  triangle = [a,b,c].sort!
  raise TriangleError if triangle.select{|x| x <= 0}.count > 0
  raise TriangleError if triangle[0] + triangle[1] - triangle[2] <= 0
  
  sym = [:scalene, :isosceles,:nil, :equilateral]
  
  i = 0
  i += 1 if a == b
  i += 1 if a == c
  i += 1 if b == c
  return sym[i]
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
