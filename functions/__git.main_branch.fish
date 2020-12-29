function __git.main_branch -d "Output git's main branch name"
  command git rev-parse --git-dir &>/dev/null || return
  for branch in main trunk;
    if command git show-ref -q --verify refs/heads/$branch;
      echo $branch
      return
    end
  end
  echo master
end