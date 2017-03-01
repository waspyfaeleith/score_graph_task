require( 'minitest/autorun' )
require_relative ( '../score_graph' )

class ScoreGraphTest < MiniTest::Test
  
  @grade_a_score
  @grade_b_score
  @grade_c_score
  @grade_d_score
  @grade_e_score

  def before_setup
    @grade_a_score = 89
    @grade_b_score = 68
    @grade_c_score = 63
    @grade_d_score = 41
    @grade_e_score = 35
  end

  def test_score_89_is_grade_A
    assert_equal("A",get_grade(@grade_a_score))
  end

  def test_score_68_is_grade_B
    assert_equal("B",get_grade(@grade_b_score))
  end

  def test_score_63_is_grade_C
    assert_equal("C",get_grade(@grade_c_score))
  end

  def test_score_41_is_grade_D
    assert_equal("D",get_grade(@grade_d_score))
  end

  def test_score_35_is_grade_E
    assert_equal("E",get_grade(@grade_e_score))
  end

  def test_num_grade
    scores = [@grade_b_score, @grade_d_score, @grade_b_score]
    assert_equal(2, num_grade('B', scores))
  end

  def test_get_percentage_20pc
    assert_equal(20,get_percentage(4,20))
  end

  def test_get_percentage_25pc
    assert_equal(25,get_percentage(4,16))
  end

  def test_print_stars
    assert_equal("*****", get_stars(5))
    assert_equal(5, get_stars(5).length)
  end

  def test_print_line
    scores = [ 78, 34, 45, 66, 95, 56, 68, 62, 65, 77, 59, 50, 48, 58, 60, 78, 64, 72, 64, 55 ]
    assert_equal("A | ******************** | 20.0", print_line("A", scores))
  end
end