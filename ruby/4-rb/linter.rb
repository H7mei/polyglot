require_relative 'stack'

class Linter
  def initialize
    @stack = Stack.new
  end

  def lint(code)
    code.each_char do |char|
      if is_opening_brace?(char)
        @stack.push(char)
      elsif is_closing_brace?(char)
        popped_char = @stack.pop
        
        return "#{char} does not have an opening brace" unless popped_char
        return "#{char} has a mismatched opening brace" unless is_matched?(popped_char, char)
      end
    end

    return "#{@stack.read} does not have a closing brace" if @stack.read

    true
  end

private
  def is_opening_brace?(char)
    ['(', '{'].include?(char)
  end

  def is_closing_brace?(char)
    [')', '}'].include?(char)
  end

  def is_matched?(opening_brace, closing_brace)
    matched_braces = {"(" => ")", "{" => "}"}
    return matched_braces[opening_brace] == closing_brace
  end
end
