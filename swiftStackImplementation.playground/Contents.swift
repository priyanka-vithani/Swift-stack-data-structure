import Foundation

public struct Stack<Elements> {
    
  /// Datastructure consisting of a generic item.
  fileprivate var array = [Elements]()

  /// The number of items in the stack.
  public var count: Int {
    return array.count
  }

  /// Verifies if the stack is empty.
  public var isEmpty: Bool {
    return array.isEmpty
  }

  /**
     Pushes an item to the top of the stack.
     
     - Parameter element: The item being pushed.
  */
  public mutating func push(_ element: Elements) {
    array.append(element)
  }

  /**
     Removes and returns the item at the top of the stack.
     
     - Returns: The item at the top of the stack.
  */
  public mutating func pop() -> Elements? {
    return array.popLast()
  }

  /// Returns the item at the top of the stack.
  public var pick: Elements? {
    return array.last
  }
}

// Create a stack and put some elements on it already.
var stackOfNames = Stack(array: ["Carl", "Lisa", "Stephanie", "Jeff", "Wade"])

// Add an element to the top of the stack.
stackOfNames.push("Mike")

// The stack is now ["Carl", "Lisa", "Stephanie", "Jeff", "Wade", "Mike"]
print(stackOfNames.array)

// Remove and return the first element from the stack. This returns "Mike".
stackOfNames.pop()

// Look at the first element from the stack.
// Returns "Wade" since "Mike" was popped on the previous line.
stackOfNames.pick

// Check to see if the stack is empty.
// Returns "false" since the stack still has elements in it.
stackOfNames.isEmpty
