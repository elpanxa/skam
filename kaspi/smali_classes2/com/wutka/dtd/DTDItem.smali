.class public abstract Lcom/wutka/dtd/DTDItem;
.super Ljava/lang/Object;
.source "DTDItem.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public cardinal:Lcom/wutka/dtd/DTDCardinal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    iput-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/wutka/dtd/DTDCardinal;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-ne p1, p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDItem;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 34
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDItem;

    .line 36
    iget-object v2, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    if-nez v2, :cond_3

    .line 38
    iget-object v2, p1, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    iget-object v3, p1, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v2, v3}, Lcom/wutka/dtd/DTDCardinal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCardinal()Lcom/wutka/dtd/DTDCardinal;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    return-object v0
.end method

.method public setCardinal(Lcom/wutka/dtd/DTDCardinal;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 52
    return-void
.end method

.method public abstract write(Ljava/io/PrintWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
