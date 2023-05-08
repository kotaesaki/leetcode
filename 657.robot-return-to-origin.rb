#
# @lc app=leetcode id=657 lang=ruby
#
# [657] Robot Return to Origin
#

# @lc code=start
# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  x, y = 0, 0
  moves.each_char do |move|
    case move
    when 'U'
      y+=1
    when 'D'
      y-=1
    when 'R'
      x+=1
    when 'L'
      x-=1
    else
      raise NotInprementError
    end
  end

  return x == 0 && y == 0
end
# @lc code=end

