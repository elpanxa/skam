.class public Lcom/wutka/dtd/DTDAny;
.super Lcom/wutka/dtd/DTDItem;
.source "DTDAny.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 27
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTDAny;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    const-string v0, "ANY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/wutka/dtd/DTDAny;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDCardinal;->write(Ljava/io/PrintWriter;)V

    .line 22
    return-void
.end method
