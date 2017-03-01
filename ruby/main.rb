require_relative ( 'score_graph' )

SCORES = [ 78, 34, 45, 66, 95, 56, 68, 62, 65, 77, 59, 50, 48, 58, 60, 78, 64, 72, 64, 55 ]

GRADES = ['A', 'B', 'C', 'D', 'E']


GRADES.each { |grade| puts print_line(grade, SCORES)}
