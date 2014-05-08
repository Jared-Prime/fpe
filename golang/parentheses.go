package parentheses

func Balanced (original string) bool {
  return innerBalance( head(original), tail(original), 1) == 1
}

func head (rest string) string {
  return rest[0:1]
}

func tail (rest string) string {
  return rest[1:len(rest)-1]
}

func shift( thisChar string, center int ) int {
  switch {
    case thisChar == "(": return center << 1
    case thisChar == ")": return center >> 1
    default: return center
  }
}

func innerBalance( thisChar string, rest string, center int) int {
  if rest == "" {
    return shift(thisChar, center)
  } else {
    return innerBalance(head(rest), tail(rest), shift(thisChar, center))
  }
}
