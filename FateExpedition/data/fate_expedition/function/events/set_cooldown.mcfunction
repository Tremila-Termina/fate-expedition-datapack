execute store result score #cooldown fe.data run random value 20..60
execute if score #doom fe.data matches 6..8 store result score #cooldown fe.data run random value 10..30
execute if score #fate fe.data matches 3 store result score #cooldown fe.data run random value 5..20
execute if score #stage fe.data matches 4 if score #dragon_phase fe.data matches 1 store result score #cooldown fe.data run random value 35..60
execute if score #stage fe.data matches 4 if score #dragon_phase fe.data matches 2 store result score #cooldown fe.data run random value 30..45
execute if score #stage fe.data matches 4 if score #dragon_phase fe.data matches 3 store result score #cooldown fe.data run random value 20..35
