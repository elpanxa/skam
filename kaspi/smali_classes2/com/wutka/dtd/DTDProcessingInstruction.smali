.class public Lcom/wutka/dtd/DTDProcessingInstruction;
.super Ljava/lang/Object;
.source "DTDProcessingInstruction.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDProcessingInstruction;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 42
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDProcessingInstruction;

    .line 44
    iget-object v2, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 46
    iget-object v2, p1, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 50
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "<?"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/wutka/dtd/DTDProcessingInstruction;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    return-void
.end method
