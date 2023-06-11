#
# @lc app=leetcode id=929 lang=ruby
#
# [929] Unique Email Addresses
#

# @lc code=start
# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
  result = []
  emails.each do |email|
    a = convert(email)
    next if result.include?(a)
    result << a
  end

  result.size
end

def convert(email)
  plus = false
  arr = []
  email.chars.each do |char|
    if plus
      if char == '@'
        plus = false
        arr << char
      end
      next
    end
    if char.match(/[a-z]/) != nil
      arr << char
    elsif arr.include?('@') && char == '.'
      arr << char
    elsif arr.include?('@') && char == '+'
      arr << char
    elsif char == '+'
      plus = true
    elsif char == '@'
      arr << char
    end
  end
  arr.join
end
# @lc code=end

