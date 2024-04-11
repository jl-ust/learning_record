## 流程控制

*   **使用 if 来做分支控制**

```rust
fn main() {
    let condition = true;
    let number = if condition {
        5
    } else {
        6
    };

    println!("The value of number is: {}", number);
}
```

要确保每个分支返回的类型是一样的

*   **使用 else if 来处理多重条件**

```rust
fn main() {
    let n = 6;

    if n % 4 == 0 {
        println!("number is divisible by 4");
    } else if n % 3 == 0 {
        println!("number is divisible by 3");
    } else if n % 2 == 0 {
        println!("number is divisible by 2");
    } else {
        println!("number is not divisible by 4, 3, or 2");
    }
}
```

就算有多个分支能匹配，返回的也是第一个匹配的分支

*   **循环控制**

*   for循环

    ```rust
    for 元素 in 集合 {
      // 使用元素干一些你懂我不懂的事情
    }
    ```

    | 使用方法                          | 等价使用方式                                            | 所有权   |
    | :---------------------------- | :------------------------------------------------ | :---- |
    | `for item in collection`      | `for item in IntoIterator::into_iter(collection)` | 转移所有权 |
    | `for item in &collection`     | `for item in collection.iter()`                   | 不可变借用 |
    | `for item in &mut collection` | `for item in collection.iter_mut()`               | 可变借用  |

*   在循环中**获取元素的索引**：

```rust
fn main() {
    let a = [4, 3, 2, 1];
    // `.iter()` 方法把 `a` 数组变成一个迭代器
    for (i, v) in a.iter().enumerate() {
        println!("第{}个元素是{}", i + 1, v);
    }
}
```

如果我们想用 `for` 循环控制某个过程执行 10 次，但是又不想单独声明一个变量来控制这个流程，该怎么写？

```rust
for _ in 0..10 {
  // ...
}

```

可以用 `_` 来替代 `i` 用于 `for` 循环中，在 Rust 中 `_` 的含义是忽略该值或者类型的意思，如果不使用 `_`，那么编译器会给你一个 `变量未使用的` 的警告。

*   break和continue

    这两个就没什么好说的了

    跟学过的语言是一摸一样的

*   **while 循环**

    如果需要一个条件来循环，当该条件为 `true` 时，继续循环，条件为 `false`，跳出循环，那么 `while` 就非常适用

*   **while vs for**

    `for` 并不会使用索引去访问数组，因此更安全也更简洁，同时避免 `运行时的边界检查`，性能更高。

*   **loop 循环**

     `loop` 就是一个简单的无限循环（就是死循环），你可以在内部实现逻辑通过 `break` 关键字来控制循环何时结束

```rust
fn main() {
    let mut counter = 0;

    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2;//break可以带返回值
        }
    };

    println!("The result is {}", result);
}
```

*   **break 可以单独使用，也可以带一个返回值**，有些类似 `return`
*   **loop 是一个表达式**，因此可以返回一个值

