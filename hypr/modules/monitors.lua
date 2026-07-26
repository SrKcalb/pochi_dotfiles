hl.monitor({ output = "DP-1", mode = "3440x1440@179.98", position = "1920x0", scale = 1 })
hl.monitor({ output = "DP-3", mode = "1920x1080@143.85", position = "0x180", scale = 1 })



-- Workspaces 1-5 on main monitor
hl.workspace_rule({ workspace = "1", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "7", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "DP-3", persistent = true })
hl.workspace_rule({ workspace = "10", monitor = "DP-3", persistent = true })
