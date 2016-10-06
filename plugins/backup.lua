local function run(msg)
if is_sudo(msg) and msg.text:lower == 'backup' then
    local cmd = io.popen('sudo tar -cpf BoyCode.tar *')
      cmd:read('*all')
      cmd:close()
      send_document(msg.from.print_name, './BoyCode.tar', ok_cb, false) 
      end
      end

return {
patterns = {
"^[!/#$]backup$"
},
run = run
}