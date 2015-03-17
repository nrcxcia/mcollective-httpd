metadata    :name => "httpd",
            :description => "Agent to manage the httpd",
            :author => "Nick Ciaccio",
            :license => "Apache License 2.0",
            :version => "0.1",
            :url => "https://",
            :timeout => 10

action "graceful", :description => "graceful restart" do
     display :always

    output :response,
           :description => "Status",
           :display_as  => "Status"

end

action "configtest", :description => "configtest" do
     display :always

    output :response,
           :description => "Status",
           :display_as  => "Status"

end

action "command", :description => "command" do
     display :always

    input  :cmd,
           :prompt      => 'Command',
           :description => 'Command',
           :type        => :list,
           :optional    => true,
           :list        => ['start','stop','restart','condrestart','try-restart','force-reload','reload','status','fullstatus','graceful','help','configtest'],
           :maxlength   => 15

    output :response,
           :description => "Status",
           :display_as  => "Status"

end
