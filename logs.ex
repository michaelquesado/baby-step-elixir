files = [
"2023_04_22_open.log",
"2023_04_23_open.log",
"2023_04_24_open.log",
"2023_04_25_open.log",
"2023_04_26_open.log",
"2023_04_27_open.log",
"2023_04_28_open.log",
"2023_04_29_open.log",
"2023_04_30_open.log",
"2023_05_01_open.log",
"2023_05_02_open.log",
"2023_05_03_open.log",
"2023_05_04_open.log",
"2023_05_05_open.log",
"2023_05_06_open.log",
"2023_05_07_open.log",
"2023_05_08_open.log",
"2023_05_09_open.log",
"2023_05_10_open.log",
"2023_05_11_open.log",
"2023_05_12_open.log",
"2023_05_13_open.log",
"2023_05_14_open.log",
"2023_05_15_open.log",
"2023_05_16_open.log",
]

cmd = fn (file) -> "rm #{file}" end

Enum.map(files, cmd) |> Enum.map(fn (file) -> IO.puts(file) end )
