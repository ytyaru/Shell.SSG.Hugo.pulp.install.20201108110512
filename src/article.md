---
title: "はじめての記事"
date: 2020-11-07T10:33:02+09:00
tags: [ example, test ]
categories: [ test ]
---

はじめての記事です。

<!-- more -->

# 最初の記事

```go
package main
import "fmt"
func main() {
    fmt.Printf("Hello world !!\n")
}
```

# mermaid.js

<script src="https://cdnjs.cloudflare.com/ajax/libs/mermaid/8.4.4/mermaid.min.js"></script>
<script>
    window.onload = function() {
        mermaid.init(undefined, ".language-mermaid");
    };
</script>

```mermaid
classDiagram
      Animal <|-- Duck
      Animal <|-- Fish
      Animal <|-- Zebra
      Animal : +int age
      Animal : +String gender
      Animal: +isMammal()
      Animal: +mate()
      class Duck{
          +String beakColor
          +swim()
          +quack()
      }
      class Fish{
          -int sizeInFeet
          -canEat()
      }
      class Zebra{
          +bool is_wild
          +run()
      }
```

