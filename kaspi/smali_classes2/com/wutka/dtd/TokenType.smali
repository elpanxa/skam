.class Lcom/wutka/dtd/TokenType;
.super Ljava/lang/Object;
.source "TokenType.java"


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/wutka/dtd/TokenType;->value:I

    .line 16
    iput-object p2, p0, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-ne p0, p1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/TokenType;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 24
    :cond_2
    check-cast p1, Lcom/wutka/dtd/TokenType;

    .line 25
    iget v2, p1, Lcom/wutka/dtd/TokenType;->value:I

    iget v3, p0, Lcom/wutka/dtd/TokenType;->value:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wutka/dtd/TokenType;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
