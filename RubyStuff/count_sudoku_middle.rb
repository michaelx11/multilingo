# First count possible arrangements for
# lower left block given
# ----------------------
# Fixed Empty Empty
# Guess Fixed Empty
# Fixed Empty Fixed
# ----------------------

@upperLeftBlock = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]]

@bottomRightBlock = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]]

@bottomLeftBlock = [
  [5, 6, 4],
  [8, 9, 7],
  [2, 3, 1]]

@newBlock = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]]

# Zero out
@newBlock.map! { |a| 
  a.map! { |b|
    0 
  }
}

@counter = 0 

def check_pos num, row, col
  0.upto 2 do |x|
    if @upperLeftBlock[x][col] == num
      return false
    end
    if @bottomLeftBlock[x][col] == num
      return false
    end
    if @bottomRightBlock[row][x] == num
      return false
    end
  end
  return true
end

def pretty_print
  p "---------"
  @newBlock.each do |rowList|
    p "#{rowList}"
  end
  p "---------"
end

def recur_helper1 num
  if num == 10
    @counter += 1
    pretty_print
  end

  0.upto 2 do |row|
    0.upto 2 do |col|
      next if @newBlock[row][col] != 0

      if check_pos num, row, col
        @newBlock[row][col] = num
        recur_helper1 num + 1
        @newBlock[row][col] = 0
      end
    end
  end
end

recur_helper1 1
p @counter
