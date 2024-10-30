# Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and
# return an array of the non-overlapping intervals that cover all the intervals in the input.

# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals = intervals.sort
  i = 1
  n = intervals.length
  sol = [intervals[0]]

  while i < n
    if sol[-1][1] >= intervals[i][0]
      sol[-1][1] = (sol[-1][1] > intervals[i][1]) ? (sol[-1][1]) : (intervals[i][1])
    else
      sol << intervals[i]
    end
    i += 1
  end
  sol
end