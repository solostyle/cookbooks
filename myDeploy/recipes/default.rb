bash "custom deploy" do
  user "root"
  cwd "/opt"
  code <<-EOH
    rm -rf nodejs_sample
    git clone https://github.com/solostyle/nodejs_sample.git
    cd nodejs_sample
    npm install && sudo npm run prod
  EOH
end
