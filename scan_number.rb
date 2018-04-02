class ScanNumber
  def initialize(input)
    @input = input
    @status = ''
    @match_fail = false
    @number_1 = []
    @number_2 = []
    @number_3 = []
    @number_4 = []
    @number_5 = []
    @number_6 = []
    @number_7 = []
    @number_8 = []
    @number_9 = []
  end
    
  def get_account
    validate_input!
    
    @input.each do |chars|
      chars.split('').each_with_index do |char, i|
        if (0..2).include?(i)
          @number_1 << char
        elsif (3..5).include?(i)
          @number_2 << char
        elsif (6..8).include?(i)
          @number_3 << char
        elsif (9..11).include?(i)
          @number_4 << char
        elsif (12..14).include?(i)
          @number_5 << char
        elsif (15..17).include?(i)
          @number_6 << char
        elsif (18..20).include?(i)
          @number_7 << char
        elsif (21..23).include?(i)
          @number_8 << char
        elsif (24..26).include?(i)
          @number_9 << char
        end
      end
    end
    
    account = [
      get(@number_1),
      get(@number_2),
      get(@number_3),
      get(@number_4),
      get(@number_5),
      get(@number_6),
      get(@number_7),
      get(@number_8),
      get(@number_9),
    ]
    
    # todo: validate_checksum!(account)
    check_status

    return "#{account.join('')} #{@status}"
  end
  
  def match(input)
    Accepted::DIGITS.each do |d|
      if input == d.first
        return d.last
      end
    end
    return @match_fail = true
  end
  
  def get(number)
    match = match(number.join(''))
    if @match_fail == true
      @ill = true
      return '?'
    else 
      return match 
    end
  end
  
  def check_status
    if @ill == true
      @status = 'ILL'
    elsif @err == true
      @status = "ERR"
    end
  end
  
  def validate_input!
    unless @input.join('').length == 81
      lines = []
      @input.each do |chars|
        lines << chars.length
      end
      raise "Error: bad input #{lines.inspect}. Expected [27, 27, 27]"
    end
  end
  
  def validate_checksum!(a)
    checksum = (
      a[8].to_i + 
      2*a[7].to_i + 
      3*a[6].to_i + 
      4*a[5].to_i +
      5*a[4].to_i +
      6*a[3].to_i +
      7*a[2].to_i +
      8*a[1].to_i +
      9*a[0].to_i
    ) % 11
    unless checksum == 0
      raise "Checksum is invalid: #{checksum}. Expected: 0"
    end
  end
end

class Accepted
  DIGITS = {
        " _ " +
        "| |" +
        "|_|" => "0",

        "   " +
        "  |" +
        "  |" => "1",

        " _ " +
        " _|" +
        "|_ " => "2",

        " _ " +
        " _|" +
        " _|" => "3",

        "   " +
        "|_|" +
        "  |" => "4",

        " _ " +
        "|_ " +
        " _|" => "5",

        " _ " +
        "|_ " +
        "|_|" => "6",

        " _ " +
        "  |" +
        "  |" => "7",

        " _ " +
        "|_|" +
        "|_|" => "8",

        " _ " +
        "|_|" +
        " _|" => "9",
  }
end

