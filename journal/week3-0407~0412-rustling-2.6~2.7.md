## 2.6 模式匹配

> 模式匹配，这个词，对于非函数语言编程来说，真的还蛮少听到，因为它经常出现在函数式编程里，用于为复杂的类型系统提供一个轻松的解构能力。

### 2.6.1 **match 和 if let**

*   `match` 的通用形式：

```rust
match target {
    模式1 => 表达式1,
    模式2 => {
        语句1;
        语句2;
        表达式2
    },
    _ => 表达式3
}
```

*   **使用`match`表达式赋值**

> `match` 本身也是一个表达式，因此可以用它来赋值

**==`match`==== 的匹配必须穷尽所有情况==**

*   `_`通配符

```rust
let some_u8_value = 0u8;
match some_u8_value {
    1 => println!("one"),
    3 => println!("three"),
    5 => println!("five"),
    7 => println!("seven"),
    _ => (),
}

```

