.class public Lcom/wutka/dtd/DTDPublic;
.super Lcom/wutka/dtd/DTDExternalID;
.source "DTDPublic.java"


# instance fields
.field public pub:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wutka/dtd/DTDExternalID;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    if-ne p1, p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDPublic;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 39
    :cond_2
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 41
    :cond_3
    check-cast p1, Lcom/wutka/dtd/DTDPublic;

    .line 43
    iget-object v2, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 45
    iget-object v2, p1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 49
    :cond_4
    iget-object v2, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getPub()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    return-object v0
.end method

.method public setPub(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    .line 59
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
    .line 23
    const-string v0, "PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
