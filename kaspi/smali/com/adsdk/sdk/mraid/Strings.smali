.class public Lcom/adsdk/sdk/mraid/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    const/16 v0, 0x1000

    new-array v3, v0, [B

    move v0, v1

    .line 43
    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
