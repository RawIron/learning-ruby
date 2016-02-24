require "json"

nodes = ["riak@node1", "riak@node7", "riak@node5"]
nodes.sort!
puts nodes.to_json


instances = {'mem1' => {'ip'  => 234}, 'mem2' => {'ip' => 333}}

def list_instances
end
