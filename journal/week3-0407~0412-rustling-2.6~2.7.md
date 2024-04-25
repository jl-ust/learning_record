## 2.8 泛型和特征

*   **泛型详解**

```rust
fn add<T>(a:T, b:T) -> T {
    a + b
}

fn main() {
    println!("add i8: {}", add(2i8, 3i8));
    println!("add i32: {}", add(20, 30));
    println!("add f64: {}", add(1.23, 1.23));
}
```

*   **结构体中使用泛型**

```rust
struct Point<T> {
    x: T,
    y: T,
}

fn main() {
    let integer = Point { x: 5, y: 10 };
    let float = Point { x: 1.0, y: 4.0 };
}
```

**==注意事项：==**

**==提前声明：==**

在使用泛型参数之前必需要进行声明 `Point<T>`

**==x 和 y 是相同的类型==**

*   **方法中使用泛型**

```rust
struct Point<T> {
    x: T,
    y: T,
}

impl<T> Point<T> {
    fn x(&self) -> &T {
        &self.x
    }
}

fn main() {
    let p = Point { x: 5, y: 10 };

    println!("p.x = {}", p.x());
}
```

*   为具体的泛型类型实现方法



*   **const 泛型（Rust 1.51 版本引入的重要特性）**











