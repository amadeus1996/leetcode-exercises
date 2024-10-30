# Given the root of a binary tree, return its maximum depth.
# A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the
# farthest leaf node.

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  unless root
    return 0
  end

  depth_left = max_depth(root.left)
  depth_right = max_depth(root.right)
  (depth_left > depth_right) ? (depth_left + 1) : (depth_right + 1)
end