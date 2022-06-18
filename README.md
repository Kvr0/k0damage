# k0damage
 
以下の機能を提供します

- EntityのHealthを設定する
- Entityに指定したダメージを与える

## Set Health
```json
{health:0.0f}
```

## Apply Damage
```json
{damage:0.0f,id:""}
```

## Function Tag
- `k0damage:killed`
```mcfunction
execute if entity @s if data storage k0damage:input {id:""} run function k0damage:damage/no_output_kill
execute if entity @s if data storage k0damage:input {id:""} run tellraw @a [{"selector":"@s"},"はよくわからないが倒された"]
```
