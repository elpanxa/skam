.class public Lcom/wutka/dtd/DTDElement;
.super Ljava/lang/Object;
.source "DTDElement.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public attributes:Ljava/util/Hashtable;

.field public content:Lcom/wutka/dtd/DTDItem;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDElement;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 80
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDElement;

    .line 82
    iget-object v2, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 84
    iget-object v2, p1, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 91
    :cond_4
    iget-object v2, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    if-nez v2, :cond_5

    .line 93
    iget-object v2, p1, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 97
    :cond_5
    iget-object v2, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    iget-object v3, p1, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 100
    :cond_6
    iget-object v2, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-nez v2, :cond_7

    .line 102
    iget-object v2, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 106
    :cond_7
    iget-object v2, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    iget-object v3, p1, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    invoke-virtual {v2, v3}, Lcom/wutka/dtd/DTDItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/wutka/dtd/DTDAttribute;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDAttribute;

    return-object v0
.end method

.method public getContent()Lcom/wutka/dtd/DTDItem;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Lcom/wutka/dtd/DTDAttribute;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public setContent(Lcom/wutka/dtd/DTDItem;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    .line 140
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    .line 116
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
    .line 39
    const-string v0, "<!ELEMENT "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDItem;->write(Ljava/io/PrintWriter;)V

    .line 50
    :goto_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 73
    return-void

    .line 48
    :cond_0
    const-string v0, "ANY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
