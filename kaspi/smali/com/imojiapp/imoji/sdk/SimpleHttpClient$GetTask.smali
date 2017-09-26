.class Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;
.super Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;
.source "SimpleHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/SimpleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetTask"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 156
    return-void
.end method

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
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 152
    return-void
.end method


# virtual methods
.method execute()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;->mEndpoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;->mParams:Ljava/util/Map;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;->mHeaders:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/HttpUtils;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$GetTask;->execute()Ljava/lang/String;

    .line 161
    return-void
.end method
