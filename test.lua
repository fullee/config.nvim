-- 调用系统命令并获取执行结果
local command = "dir"  -- 替换为你要执行的实际命令
local result = os.execute(command)

-- 输出执行结果
if result == 0 then
    print("命令执行成功")
else
    print("命令执行失败")
end
