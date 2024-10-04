# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def game_of_life(board)
  0.upto(board.length - 1) do |i|
    0.upto(board[i].length - 1) do |j|
      sum = 0
      if i - 1 >= 0
        sum += board[i - 1][j] > 1 ? board[i - 1][j] - 2 : board[i - 1][j]
      end
      if i + 1 <= board.length - 1
        sum += board[i + 1][j] > 1 ? board[i + 1][j] - 2 : board[i + 1][j]
      end
      if j - 1 >= 0
        sum += board[i][j - 1] > 1 ? board[i][j - 1] - 2 : board[i][j - 1]
      end
      if j + 1 <= board[i].length - 1
        sum += board[i][j + 1] > 1 ? board[i][j + 1] - 2 : board[i][j + 1]
      end
      if i - 1 >= 0
        if j - 1 >= 0
          sum += board[i - 1][j - 1] > 1 ? board[i - 1][j - 1] - 2 : board[i - 1][j - 1]
        end
        if j + 1 <= board[i].length - 1
          sum += board[i - 1][j + 1] > 1 ? board[i - 1][j + 1] - 2 : board[i - 1][j + 1]
        end
      end
      if i + 1 <= board.length - 1
        if j - 1 >= 0
          sum += board[i + 1][j - 1] > 1 ? board[i + 1][j - 1] - 2 : board[i + 1][j - 1]
        end
        if j + 1 <= board[i].length - 1
          sum += board[i + 1][j + 1] > 1 ? board[i + 1][j + 1] - 2 : board[i + 1][j + 1]
        end
      end
      if board[i][j] == 0 and sum == 3
        board[i][j] = 2
      elsif board[i][j] == 1 and (sum < 2 or sum > 3)
        board[i][j] = 3
      end
    end
  end
  0.upto(board.length - 1) do |i|
    0.upto(board[i].length - 1) do |j|
      if board[i][j] == 2
        board[i][j] = 1
      elsif board[i][j] == 3
        board[i][j] = 0
      end
    end
  end
end