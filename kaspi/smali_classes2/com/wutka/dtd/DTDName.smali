.class public Lcom/wutka/dtd/DTDName;
.super Lcom/wutka/dtd/DTDItem;
.source "DTDName.java"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDName;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 35
    :cond_2
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 37
    :cond_3
    check-cast p1, Lcom/wutka/dtd/DTDName;

    .line 39
    iget-object v2, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 41
    iget-object v2, p1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 45
    :cond_4
    iget-object v2, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDCardinal;->write(Ljava/io/PrintWriter;)V

    .line 29
    return-void
.end method
