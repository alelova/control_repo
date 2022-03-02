class profile::agents_node{
  include dockeragent
  dockeragent::node{'web.puppet.vm':}
  dockeragent::node{'web.puppet.db':}
}
