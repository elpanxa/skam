.class public Lcom/wutka/dtd/DTDNotation;
.super Ljava/lang/Object;
.source "DTDNotation.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public externalID:Lcom/wutka/dtd/DTDExternalID;

.field public name:Ljava/lang/String;


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
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p1, p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDNotation;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 40
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDNotation;

    .line 42
    iget-object v2, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 44
    iget-object v2, p1, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v2, :cond_5

    .line 53
    iget-object v2, p1, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 57
    :cond_5
    iget-object v2, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v3, p1, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v2, v3}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getExternalID()Lcom/wutka/dtd/DTDExternalID;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExternalID(Lcom/wutka/dtd/DTDExternalID;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 79
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    .line 67
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
    .line 28
    const-string v0, "<!NOTATION "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDExternalID;->write(Ljava/io/PrintWriter;)V

    .line 32
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    return-void
.end method
