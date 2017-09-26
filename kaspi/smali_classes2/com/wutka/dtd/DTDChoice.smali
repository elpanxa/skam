.class public Lcom/wutka/dtd/DTDChoice;
.super Lcom/wutka/dtd/DTDContainer;
.source "DTDChoice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wutka/dtd/DTDContainer;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 42
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTDChoice;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDContainer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDChoice;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    if-nez v0, :cond_0

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 31
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDItem;

    .line 33
    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDItem;->write(Ljava/io/PrintWriter;)V

    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/wutka/dtd/DTDChoice;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDCardinal;->write(Ljava/io/PrintWriter;)V

    .line 37
    return-void
.end method
