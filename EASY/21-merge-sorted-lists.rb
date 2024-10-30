# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the
# first two lists.
# Return the head of the merged linked list.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  if list1.nil? and list2.nil?
    return []
  end

  aux = ListNode.new
  head = aux
  until list1.nil? or list2.nil?
    if list1.val <= list2.val
      aux.val = list1.val
      list1 = list1.next
    else
      aux.val = list2.val
      list2 = list2.next
    end
    aux.next = ListNode.new
    aux = aux.next
  end

  unless list1.nil?
    loop do
      aux.val = list1.val
      if list1.next.nil?
        break
      else
        aux.next = ListNode.new
        aux = aux.next
        list1 = list1.next
      end
    end
  end

  unless list2.nil?
    loop do
      aux.val = list2.val
      if list2.next.nil?
        break
      else
        aux.next = ListNode.new
        aux = aux.next
        list2 = list2.next
      end
    end
  end
  head
end