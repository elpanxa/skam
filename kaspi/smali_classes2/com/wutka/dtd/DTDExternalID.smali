.class public abstract Lcom/wutka/dtd/DTDExternalID;
.super Ljava/lang/Object;
.source "DTDExternalID.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public system:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    instance-of v2, p1, Lcom/wutka/dtd/DTDExternalID;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 27
    :cond_2
    check-cast p1, Lcom/wutka/dtd/DTDExternalID;

    .line 29
    iget-object v2, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 31
    iget-object v2, p1, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    iget-object v3, p1, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    return-object v0
.end method

.method public setSystem(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public abstract write(Ljava/io/PrintWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
