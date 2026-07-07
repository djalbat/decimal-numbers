export Boolean isTermNaturalNumber(Node termNode) {
  Node symbolTerminalNode = symbolTerminalNodeFromTermNode(termNode);

  Boolean termNaturalNumber =

    if (symbolTerminalNode != null) {
      Boolean symbolTerminalNodeInteger = tryInteger(symbolTerminalNode);

      Boolean symbolTerminalNodeNaturalNumber = 

        if (symbolTerminalNodeInteger) {
          { String content } = symbolTerminalNode;

          Boolean contentStartsWithMinus = startsWith(content, "-");
      
          Boolean symbolTerminalNodeNaturalNumber = !contentStartsWithMinus;

          return symbolTerminalNodeNaturalNumber;
        }
        else
          false

      ;

      Boolean termNaturalNumber = symbolTerminalNodeNaturalNumber;

      return termNaturalNumber;
    }
    else
      false

  ;

  return termNaturalNumber;
}

export Boolean isTermInteger(Node termNode) {
  Node symbolTerminalNode = symbolTerminalNodeFromTermNode(termNode);

  Boolean termInteger =

    if (symbolTerminalNode != null) {
      Boolean symbolTerminalNodeInteger = tryInteger(symbolTerminalNode);

      Boolean termInteger = symbolTerminalNodeInteger;

      return termInteger;
    }
    else
      false

  ;

  return termInteger;
}

Node symbolTerminalNodeFromTermNode(Node termNode) {
  { List<Node> childNodes } = termNode;

  Integer childNodesLength = lengthOf(childNodes);

  Node symbolTerminalNode = 

    if (childNodesLength == 1) {
      Node symbolTerminalNode = nodeQuery(termNode, "/term/@symbol!");

      return symbolTerminalNode;
    }
    else
      null

  ;

  return symbolTerminalNode;
}
