class Cash_register
  def initialize
    @bill = ['$100', '$50', '$20', '$10', '$5', '$1']
    @bill_value = [100, 50, 20, 10, 5, 1]
    @bill_amount = [0, 0, 0, 0, 0, 0]
  end

  def make_change(change)

    while change > 0
      if change >= 100
        bill_index = 0
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change >= 50
        bill_index = 1
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change >= 20
        bill_index = 2
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change >= 10
        bill_index = 3
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change >= 5
        bill_index = 4
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
        bill_index += 1

      elsif change > 0
        bill_index = 5
        while change >= @bill_value[bill_index]
          @bill_amount[bill_index] += 1
          change -= @bill_value[bill_index]
        end
      end

    end
    return @bill_amount
  end
end
