$pkg_name="filebeat"
$pkg_origin="jmassardo"
$pkg_version="7.6.0"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_source="https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-$pkg_version-windows-x86_64.zip"
$pkg_shasum="27adab37535db15cc08c49d9fb6537db73745af0cff103eb28ef20e9b2a09132"

$pkg_binds_optional=@{
  kibana="port"
  elasticsearch="http-port"
  logstash="port"
}

function Invoke-Install {
  Copy-Item -R $HAB_CACHE_SRC_PATH/filebeat-$pkg_version/filebeat-$pkg_version-windows-x86_64 $pkg_prefix/bin
}
