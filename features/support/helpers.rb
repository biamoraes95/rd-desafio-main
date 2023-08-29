module Helpers
    def get_token
      2.times do
        js_script = 'return window.localStorage.getItem("default_auth_token");'
        page.execute_script(js_script)
        sleep 1
      end
    end
end