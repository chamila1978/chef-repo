
apt_repository "dotdeb-php54" do
  uri "http://packages.dotdeb.org"
  distribution "squeeze-php54"
  components ["all"]
  key "http://www.dotdeb.org/dotdeb.gpg"
end
