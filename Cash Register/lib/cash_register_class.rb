class Cash_register
  def initialize
    @bill = ['$10', '$5', '$1']
    @bill_value = [10, 5, 1]
    @bill_amount = [0, 0, 0]
  end

  def make_change(change)

    while change > 0
      if change > 10
        bill_index = 0
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change > 5
        bill_index = 0
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change > 0
        bill_index = 1
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        next if change == 0
      end

    end
    return @bill_amount
    #return "#{@bill_amount[bill_index]} - #{@bill[bill_index]}"
=begin
    while change >= 1
      @money_amount[1] += 1
      change -= 1
    end
    return "#{@money_amount[1]} - #{@money[1]}"
=end
  end
end
