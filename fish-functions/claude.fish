function claude --description "Blocked: use claude_personal or claude_bluelabs"
  echo "Error: do not run 'claude' directly." >&2
  echo "Use 'claude_personal' or 'claude_bluelabs' instead." >&2
  return 1
end
