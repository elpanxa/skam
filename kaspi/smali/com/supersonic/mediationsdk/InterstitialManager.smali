.class Lcom/supersonic/mediationsdk/InterstitialManager;
.super Ljava/lang/Object;
.source "InterstitialManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialApi;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialListener;


# instance fields
.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/InterstitialManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/InterstitialManager;Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/supersonic/mediationsdk/InterstitialManager;->startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x0

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getISProvidersArray()Lorg/json/JSONArray;

    move-result-object v5

    move v3, v1

    .line 151
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 154
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "provider"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "requestUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.supersonic.adapters."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "Adapter"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 162
    const-string v7, "getInstance"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 163
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 166
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 176
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    move-object v2, v0

    invoke-interface {v2, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V

    .line 177
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/InterstitialManager;->addInterstitialAdapter(Lcom/supersonic/mediationsdk/sdk/InterstitialApi;)V

    .line 178
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v7

    .line 179
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    move-object v2, v0

    invoke-interface {v2, p1, v7, p2}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v1

    .line 188
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 189
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":startAdapter(providerList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 192
    :cond_1
    return-object v4
.end method


# virtual methods
.method public addInterstitialAdapter(Lcom/supersonic/mediationsdk/sdk/InterstitialApi;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    .line 50
    return-void
.end method

.method public hasProviders()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1, p3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/InterstitialManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/supersonic/mediationsdk/InterstitialManager$1;-><init>(Lcom/supersonic/mediationsdk/InterstitialManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 125
    const-string v1, "InterstitialInitiator"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Multiple calls to init are not allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->isInterstitialAdAvailable()Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterstitialAdClicked()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialAdClicked()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 274
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    .line 275
    return-void
.end method

.method public onInterstitialAdClosed()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 280
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClosed()V

    .line 281
    return-void
.end method

.method public onInterstitialAvailability(Z)V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialAvailability(available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 255
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialAvailability(Z)V

    .line 256
    return-void
.end method

.method public onInterstitialInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialInitFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 249
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 250
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialInitSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitSuccess()V

    .line 243
    return-void
.end method

.method public onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialShowFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 269
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialShowSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 261
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowSuccess()V

    .line 262
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public setAge(I)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .line 234
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/InterstitialApi;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/InterstitialApi;->showInterstitial()V

    .line 199
    :cond_0
    return-void
.end method
