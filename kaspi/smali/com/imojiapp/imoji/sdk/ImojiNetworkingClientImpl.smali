.class public Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;
.super Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;
.source "ImojiNetworkingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$DeserializationTask;,
        Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;
    }
.end annotation


# static fields
.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingInterface;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    invoke-direct {v0}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;-><init>()V

    iput-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    .line 37
    return-void
.end method

.method static synthetic access$100()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->sGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private getDefaultHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v1, "imoji-sdk-version"

    const-string v2, "2.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "x-client-os-version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "x-client-model"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-object v0
.end method


# virtual methods
.method addImojiToUserCollection(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "imojiId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/user/imoji/collection/add"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/AddImojiToCollectionResponse;

    invoke-direct {v4, p2, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 127
    return-void
.end method

.method createImoji(Ljava/util/List;)Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;
    .locals 5
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

    .prologue
    const/4 v1, 0x0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    const-string v2, "tags"

    const-string v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v3, "https://api.imoji.io/v2/imoji/create"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-nez v0, :cond_1

    move-object v0, v1

    .line 186
    :goto_0
    return-object v0

    .line 181
    :cond_1
    :try_start_0
    sget-object v2, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->sGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/networking/responses/CreateImojiResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    move-object v0, v1

    .line 186
    goto :goto_0
.end method

.method getAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string v0, "client_credentials"

    .line 132
    if-eqz p3, :cond_0

    .line 133
    const-string v0, "refresh_token"

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v2

    .line 137
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0xb

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string v4, "grant_type"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "refresh_token"

    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v4, "https://api.imoji.io/v2/oauth/token"

    invoke-virtual {v0, v4, v3, v2}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v0, :cond_1

    move-object v0, v1

    .line 154
    :goto_0
    return-object v0

    .line 149
    :cond_1
    :try_start_0
    sget-object v2, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->sGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/networking/responses/GetAuthTokenResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    move-object v0, v1

    .line 154
    goto :goto_0
.end method

.method getFeaturedImojis(IILcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    const-string v1, "offset"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "numResults"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/imoji/featured/fetch"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;

    invoke-direct {v4, p3, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 47
    return-void
.end method

.method getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/imoji/categories/fetch"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/GetCategoryResponse;

    invoke-direct {v4, p1, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 71
    return-void
.end method

.method getImojiCategories(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "classification"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/imoji/categories/fetch"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/GetCategoryResponse;

    invoke-direct {v4, p2, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 80
    return-void
.end method

.method getImojisById(Ljava/util/List;)Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;
    .locals 5
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

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "ids"

    const-string v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v3, "https://api.imoji.io/v2/imoji/fetchMultiple"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 112
    :cond_0
    :try_start_0
    sget-object v2, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->sGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method getImojisById(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "ids"

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/imoji/fetchMultiple"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/FetchImojisResponse;

    invoke-direct {v4, p2, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 98
    return-void
.end method

.method getUserImojis(Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/user/imoji/fetch"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/GetUserImojiResponse;

    invoke-direct {v4, p1, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 88
    return-void
.end method

.method reportAbusiveImoji(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "imojiId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/imoji/reportAbusive"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/ReportAbusiveResponse;

    invoke-direct {v4, p2, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 196
    return-void
.end method

.method requestExternalOauth(Ljava/lang/String;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "clientId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/oauth/external/getIdPayload"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/ExternalOauthPayloadResponse;

    invoke-direct {v4, p2, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 165
    return-void
.end method

.method searchImojis(Ljava/lang/String;IILcom/imojiapp/imoji/sdk/Callback;)V
    .locals 7
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

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v1, "query"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "offset"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "numResults"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v2, "https://api.imoji.io/v2/imoji/search"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v5, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v6, Lcom/imojiapp/imoji/sdk/networking/responses/ImojiSearchResponse;

    invoke-direct {v4, p4, v5, v6}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 58
    return-void
.end method

.method searchImojis(Ljava/util/Map;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 6
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

    .prologue
    .line 62
    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getApiToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHttpClient:Lcom/imojiapp/imoji/sdk/SimpleHttpClient;

    const-string v1, "https://api.imoji.io/v2/imoji/search"

    invoke-direct {p0}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;

    iget-object v4, p0, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl;->mHandler:Landroid/os/Handler;

    const-class v5, Lcom/imojiapp/imoji/sdk/networking/responses/ImojiSearchResponse;

    invoke-direct {v3, p2, v4, v5}, Lcom/imojiapp/imoji/sdk/ImojiNetworkingClientImpl$ApiHttpClientCallback;-><init>(Lcom/imojiapp/imoji/sdk/Callback;Landroid/os/Handler;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/imojiapp/imoji/sdk/SimpleHttpClient;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/imojiapp/imoji/sdk/SimpleHttpClient$SimpleHttpClientCallback;)V

    .line 64
    return-void
.end method
