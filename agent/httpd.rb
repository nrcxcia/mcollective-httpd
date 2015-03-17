module MCollective
  module Agent
    class Httpd<RPC::Agent

            action "graceful" do
                command('graceful')
            end

            action "configtest" do
                command('configtest')
            end

            action "command" do
                command(request[:cmd])
            end

            private

            def command(cmd)

               out = []

               status = run("/etc/init.d/httpd #{cmd} 2>&1", :stdout => out)

               if status == 0
                 reply[:response] = "SUCCESS #{out.first}"
               else
                 reply.fail "FAILED : #{out.first}"
               end
            end
        end
     end
end
