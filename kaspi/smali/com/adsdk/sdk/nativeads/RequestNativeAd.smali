.class public Lcom/adsdk/sdk/nativeads/RequestNativeAd;
.super Ljava/lang/Object;
.source "RequestNativeAd.java"

# interfaces
.implements Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;


# instance fields
.field private context:Landroid/content/Context;

.field private customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

.field private nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

.field private reportedAvailability:Z

.field private requestResultJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->requestResultJson:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAd;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/nativeads/RequestNativeAd;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdFailed()V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/customevents/CustomEventNative;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)Lcom/adsdk/sdk/nativeads/NativeAdListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    return-object v0
.end method

.method private getCustomEvents([Lorg/apache/http/Header;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    if-nez p1, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 100
    :cond_1
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-CustomEvent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 104
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v2, "class"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v4, "parameter"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    const-string v5, "pixel"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v5, Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-direct {v5, v2, v4, v3}, Lcom/adsdk/sdk/customevents/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v2

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot parse json with custom event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private loadCustomEventNativeAd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 210
    iput-object v3, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    return-void

    .line 214
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/customevents/CustomEvent;

    .line 215
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/adsdk/sdk/nativeads/NativeAd;->getCustomEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEvent;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/customevents/CustomEventNativeFactory;->create(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventNative;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    .line 217
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;

    invoke-direct {v2, p0, v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd$2;-><init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;Lcom/adsdk/sdk/customevents/CustomEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    iput-object v3, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    .line 226
    const-string v0, "Failed to create Custom Event Native Ad."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadOriginalNativeAd()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd$1;-><init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    return-void
.end method

.method private notifyAdFailed()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->reportedAvailability:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/RequestNativeAd$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd$4;-><init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative;->unregisterListener()V

    .line 260
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->reportedAvailability:Z

    .line 261
    return-void
.end method

.method private notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->reportedAvailability:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/nativeads/RequestNativeAd$3;-><init>(Lcom/adsdk/sdk/nativeads/RequestNativeAd;Lcom/adsdk/sdk/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEventNative;->unregisterListener()V

    .line 244
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->reportedAvailability:Z

    .line 245
    return-void
.end method


# virtual methods
.method public onCustomEventNativeFailed()V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadCustomEventNativeAd()V

    .line 266
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadOriginalNativeAd()V

    goto :goto_0
.end method

.method public onCustomEventNativeLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V

    .line 275
    return-void
.end method

.method protected parse(Ljava/io/InputStream;[Lorg/apache/http/Header;)Lcom/adsdk/sdk/nativeads/NativeAd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;-><init>()V

    .line 125
    :try_start_0
    invoke-direct {p0, p2}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->getCustomEvents([Lorg/apache/http/Header;)Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAd;->setCustomEvents(Ljava/util/List;)V

    .line 129
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->requestResultJson:Ljava/lang/String;

    .line 143
    return-object v0

    .line 134
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :catch_1
    move-exception v0

    .line 141
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendRequest(Lcom/adsdk/sdk/nativeads/NativeAdRequest;Landroid/os/Handler;Lcom/adsdk/sdk/nativeads/NativeAdListener;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adsdk/sdk/RequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2710

    .line 46
    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->handler:Landroid/os/Handler;

    .line 47
    iput-object p3, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    .line 48
    iput-object p4, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->context:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    .line 50
    invoke-virtual {p1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->reportedAvailability:Z

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad RequestPerform HTTP Get Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 54
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adsdk/sdk/nativeads/NativeAdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v0, "User-Agent"

    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 63
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 64
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->parse(Ljava/io/InputStream;[Lorg/apache/http/Header;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadCustomEventNativeAd()V

    .line 67
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->customEventNative:Lcom/adsdk/sdk/customevents/CustomEventNative;

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadOriginalNativeAd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->reportedAvailability:Z

    if-eqz v0, :cond_3

    .line 91
    return-void

    .line 71
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->loadOriginalNativeAd()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdFailed()V

    .line 79
    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Error in HTTP request"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdFailed()V

    .line 75
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Error. Response code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :cond_3
    const-wide/16 v0, 0xa

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->notifyAdFailed()V

    goto :goto_0
.end method
