.class Lcom/wutka/dtd/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public type:Lcom/wutka/dtd/TokenType;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/wutka/dtd/TokenType;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/wutka/dtd/Token;->type:Lcom/wutka/dtd/TokenType;

    .line 22
    iput-object p2, p0, Lcom/wutka/dtd/Token;->value:Ljava/lang/String;

    .line 23
    return-void
.end method
