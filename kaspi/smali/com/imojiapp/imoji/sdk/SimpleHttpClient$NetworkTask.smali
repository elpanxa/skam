.class abstract Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;
.super Ljava/lang/Object;
.source "SimpleHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/SimpleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NetworkTask"
.end annotation


# instance fields
.field protected mEndpoint:Ljava/lang/String;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mEndpoint:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mParams:Ljava/util/Map;

    .line 92
    iput-object p3, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mHeaders:Ljava/util/Map;

    .line 93
    iput-object p4, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    .line 94
    return-void
.end method


# virtual methods
.method abstract execute()Ljava/lang/String;
.end method

.method protected readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    const-string v2, "NETWORK_ERROR"

    invoke-interface {v1, v2}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;->onFailure(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 111
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_4

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    const-string v2, "NETWORK_ERROR"

    invoke-interface {v1, v2}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 119
    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    if-eqz v1, :cond_5

    .line 136
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    const-string v2, "NETWORK_ERROR"

    invoke-interface {v1, v2}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;->onFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :cond_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 126
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    if-eqz v1, :cond_7

    .line 130
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;->mSimpleHttpClientCallback:Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;

    invoke-interface {v1, v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
