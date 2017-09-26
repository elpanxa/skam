.class abstract Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
.super Ljava/lang/Object;
.source "ImojiNetworkingInterface.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addImojiToUserCollection(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract createImoji(Ljava/util/List;)Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;"
        }
    .end annotation
.end method

.method getApiToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    const-string v0, "t"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;
.end method

.method abstract getFeaturedImojis(IILcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getImojiCategories(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getImojisById(Ljava/util/List;)Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;"
        }
    .end annotation
.end method

.method abstract getImojisById(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getUserImojis(Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract reportAbusiveImoji(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract requestExternalOauth(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract searchImojis(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract searchImojis(Ljava/util/Map;Lcom/imojiapp/imoji/sdk/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
