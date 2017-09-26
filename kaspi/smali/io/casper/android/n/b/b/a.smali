.class public Lio/casper/android/n/b/b/a;
.super Ljava/lang/Object;
.source "SCMessageInputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private mBytes:[B

.field private final mInputStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lio/casper/android/n/b/b/a;->mBytes:[B

    .line 13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    .line 16
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lio/casper/android/n/b/b/a;->mInputStream:Ljava/io/DataInputStream;

    .line 17
    return-void
.end method

.method private a(Ljava/lang/String;)Lio/casper/android/n/b/d/n;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lio/casper/android/n/b/d/n;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    .line 22
    invoke-virtual {v0}, Lio/casper/android/n/b/d/n;->e()Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "connect_response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/c;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    const-string v2, "presence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/k;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto :goto_0

    .line 32
    :cond_2
    const-string v2, "message_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/h;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto :goto_0

    .line 36
    :cond_3
    const-string v2, "message_release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/m;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto :goto_0

    .line 40
    :cond_4
    const-string v2, "chat_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto :goto_0

    .line 44
    :cond_5
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/g;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto :goto_0

    .line 48
    :cond_6
    const-string v2, "protocol_error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/l;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto :goto_0

    .line 52
    :cond_7
    const-string v2, "conversation_message_response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 53
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto/16 :goto_0

    .line 56
    :cond_8
    const-string v2, "snap_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 57
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/o;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto/16 :goto_0

    .line 60
    :cond_9
    const-string v2, "ping_response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->gson:Lcom/google/gson/Gson;

    const-class v1, Lio/casper/android/n/b/d/j;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lio/casper/android/n/b/d/n;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 82
    if-lez v1, :cond_0

    const v0, 0xdbba0

    if-le v1, v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Packet Length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") received from Server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    :try_start_0
    new-array v0, v1, [B

    iput-object v0, p0, Lio/casper/android/n/b/b/a;->mBytes:[B

    .line 88
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->mInputStream:Ljava/io/DataInputStream;

    iget-object v2, p0, Lio/casper/android/n/b/b/a;->mBytes:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 89
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lio/casper/android/n/b/b/a;->mBytes:[B

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lio/casper/android/n/b/b/a;->a(Ljava/lang/String;)Lio/casper/android/n/b/d/n;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 92
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 93
    new-array v0, v1, [B

    iput-object v0, p0, Lio/casper/android/n/b/b/a;->mBytes:[B

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lio/casper/android/n/b/b/a;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
