# get the node.js version
function node_version_info() {
  local node_version
  node_version=$(node -v 2>/dev/null)
  [[ "${node_version}x" == "x" ]] && return
  node_version=${node_version:1}
  echo "${ZSH_THEME_NODE_VERSION_PREFIX}${node_version}${ZSH_THEME_NODE_VERSION_SUFFIX}"
}
