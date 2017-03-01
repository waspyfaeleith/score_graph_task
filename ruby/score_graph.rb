
def get_grade (score)
  case (score)
    when 77..100
      return "A"
    when 64..76
      return "B"
    when 50..63
      return "C"
    when 40..49
      return "D"
    else
      return "E"
  end
end

def num_grade(grade, scores)
  count = 0
  scores.each { |score|
    if get_grade(score) == grade
      count += 1
    end
  }
  return count
end

def get_percentage(num_scores, total_num_scores)
  percentage = (num_scores.to_f / total_num_scores) * 100
end

def get_stars(percentage)
  f = 0.0
  stars = "";
  if (percentage > 0.5)
    while (f < percentage)
      stars += "*"
      f += 1.0
    end
  end
  return stars
end

def print_line(grade, scores)
  grade_count = num_grade(grade, scores)
  percentage = get_percentage(grade_count, scores.length)
  return "#{grade} | #{get_stars(percentage)} | #{percentage}"
end
