.class Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;
.super Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;
.source "SimpleHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/SimpleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostTask"
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
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 178
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
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$NetworkTask;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 174
    return-void
.end method


# virtual methods
.method execute()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;->mEndpoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;->mParams:Ljava/util/Map;

    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;->mHeaders:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/imojiapp/imoji/sdk/HttpUtils;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient$PostTask;->execute()Ljava/lang/String;

    .line 183
    return-void
.end method
