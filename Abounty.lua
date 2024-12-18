getgenv().Key = "" -- Nhập key của bạn vô đây
_G.Configs = {
    Performance = {
        WhiteScreen = false, -- Chỉnh màn hình trắng
        BlackScreen = {
            Enabled = true, -- chỉnh bảng trạng thái săn
            Font = Enum.Font.FredokaOne, -- Chỉnh kiểu chữ
            Transparency = 0.5, -- Chỉnh độ trong suốt
        },
    },
    allowed_actions = {
        AutoBounty = true,
        Team = "Marines", -- Chỉnh đội để săn ví dụ: Pirates / Marines
        Continue = 5, -- Nếu người chơi không trong combat trong 5 giây thì bỏ qua
        Dodge = true, -- Né tránh đòn tấn công từ đối phương
        Ken = true, -- Tự động bật ken
        Random = false, -- Tự động dùng bất kì chiêu thức nào có thể gây sát thương
        Weapons = {
            Sword = {
                Enable = false,
                Skills = {
                    X = {
                        Enable = true,
                        Number = 3,
                        HoldTime = 0.1,
                    },
                    Z = {
                        Enable = true,
                        Number = 2,
                        HoldTime = 0.2,
                    },
                },
            },
            ['Blox Fruit'] = {
                Enable = false,
                Skills = {
                    X = {
                        Enable = true,
                        Number = 1,
                        HoldTime = 0.1,
                    },
                    C = {
                        Enable = false,
                        Number = 4.5,
                        HoldTime = 0.2,
                    },
                    Z = {
                        Enable = false,
                        Number = 4,
                        HoldTime = 0.1,
                    },
                    F = {
                        Enable = false,
                        Number = 8,
                        HoldTime = 0.1,
                    },
                    V = {
                        Enable = false,
                        Number = 7,
                        HoldTime = 0.1,
                    },
                },
            },
            Melee = {
                Enable = true,
                Skills = {
                    X = {
                        Enable = true,
                        Number = 5.5,
                        HoldTime = 0.1,
                    },
                    C = {
                        Enable = true,
                        Number = 5,
                        HoldTime = 0.3,
                    },
                    Z = {
                        Enable = true,
                        Number = 4,
                        HoldTime = 0.1,
                    },
                },
            },
            Gun = {
                Enable = true,
                Skills = {
                    X = {
                        Enable = true,
                        Number = 1,
                        HoldTime = 0.16,
                    },
                    Z = {
                        Enable = true,
                        Number = 5,
                        HoldTime = 0.15,
                    },
                },
            },
        },
        AutoView = true, -- Tự động quan sát người bị săn
        SafeZone = {
            Enabled = true,
            Max = 50000, -- Độ cao sẽ bỏ chạy và đến, khi bị đánh như 1 con chó
            ProtectCD = true,
            HighestHealth = 65, -- Khi lượng máu được hồi phục tầm 50% sẽ quay lại chiến tiếp
            LowestHealth = 55, -- Máu thấp nhất sẽ bắt đầu chạy như 1 con chó
        },
        Webhook = {
            Enabled = true,
            Logs = {
                Console = false, -- Hiển thị file lỗi khi đang săn, hỗ trợ dev fix bugs
                PlayerStatus = true, -- Hiển thị thông tin khi săn
            },
            URL = "",
        },
        RandomATK = 35,
        Limited = 50, -- Giới hạn thời gian săn 1 người là 45 giây
        MethodClicks = {
            Melee = true, -- Vũ khí sẽ được chọn để click
            CanM1At = 8500, -- Có thể bắt đầu click khi người bị săn còn 9000 máu
            Count = 6, -- Chiêu thức được tung ra đủ 6 lần sẽ bắt đầu click
            Gun = true, -- Vũ khí sẽ được chọn để click
            Delay = 0.15, -- Độ trễ khi click
            Sword = false, -- Vũ khí sẽ được chọn để click
        },
        IgnoreFruits = {
        }, -- Bỏ qua những thằng ăn trái ác quỷ
        Race = {
            V4 = {
                Enabled = true, -- Tự động dùng V4
                UseAt = 14000, -- Dùng khi 14000 máu
            },
            V3 = {
                Enabled = true, -- Tự động dùng V3
                Settings = {
                    Shark = {
                        Stun = 2, -- Tự động tộc cá nếu bị choáng quá 2 giây
                    },
                    Human = 8500, -- Tự động dùng tộc human khi máu còn 8500
                },
            },
        },
    },
}
_G.FX_Options = {
        Enabled = false, -- Bật tắt chỉnh sửa đồ hoạ
        Textures = true, -- Xoá kết cấu, hiệu ứng
        VisualEffects = true, -- Xoá hiệu ứng
        Invisible = false, -- Ẩn các khối
        Parts = false, -- Bật / tắt ẩn các khối phải kết hợp với "Invisible
        Particles = true,  -- Xoá hiệu ứng
        Sky = false, --> Xoá trời
        FullBright = true -- Chỉnh sáng
};

-- Kịch bản sẽ được thực hiện:
loadstring(game:HttpGet('https://raw.githubusercontent.com/RedGamer12/TNNP-SYSTEM/refs/heads/main/client/BloxFruit/BountyLoader-obfuscated.lua'))(); 
