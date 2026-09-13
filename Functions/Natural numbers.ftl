export Boolean isTermNaturalNumber(Node termNode) {
  Boolean termInteger = tryInteger(termNode);

  Boolean termNaturalNumber =

    if (termInteger) {
      { List<Node> childNodes } = termNode;

      Integer childNodesLength = lengthOf(childNodes);

      Boolean termNaturalNumber = (childNodesLength == 1);

      return termNaturalNumber;
    }
    else
      false

  ;

  return termNaturalNumber;
}

export Boolean isTermInteger(Node termNode) {
  Boolean termInteger = tryInteger(termNode);

  return termInteger;
}
