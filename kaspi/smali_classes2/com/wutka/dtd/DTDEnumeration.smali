.class public Lcom/wutka/dtd/DTDEnumeration;
.super Ljava/lang/Object;
.source "DTDEnumeration.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 68
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTDEnumeration;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lcom/wutka/dtd/DTDEnumeration;

    .line 72
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    iget-object v1, p1, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItem()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDEnumeration;->getItems()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItems()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 39
    return-object v0
.end method

.method public getItemsVec()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public setItem(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 92
    return-void
.end method

.method public setItem([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/Vector;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    .line 82
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/wutka/dtd/DTDEnumeration;->items:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "( "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDEnumeration;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 55
    const/4 v0, 0x1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    if-nez v0, :cond_0

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 61
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    return-void
.end method
