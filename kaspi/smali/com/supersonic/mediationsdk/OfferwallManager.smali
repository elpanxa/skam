.class Lcom/supersonic/mediationsdk/OfferwallManager;
.super Ljava/lang/Object;
.source "OfferwallManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallApi;
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallListener;


# instance fields
.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

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

    iput-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/OfferwallManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/OfferwallManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/OfferwallManager;Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/supersonic/mediationsdk/OfferwallManager;->startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_2
    monitor-exit p0

    return-void

    .line 119
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

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {p3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getOWProvidersArray()Lorg/json/JSONArray;

    move-result-object v5

    move v3, v1

    .line 141
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 144
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "provider"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "requestUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 151
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

    .line 152
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

    .line 153
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 156
    iget-object v2, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 168
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    move-object v2, v0

    invoke-interface {v2, p0}, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 169
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/OfferwallManager;->addOfferwallAdapter(Lcom/supersonic/mediationsdk/sdk/OfferwallApi;)V

    .line 171
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v7

    .line 172
    move-object v0, v1

    check-cast v0, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    move-object v2, v0

    invoke-interface {v2, p1, v7, p2}, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    iget-object v2, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

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

    .line 183
    iget-object v2, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

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

    .line 186
    :cond_1
    return-object v4
.end method


# virtual methods
.method public addOfferwallAdapter(Lcom/supersonic/mediationsdk/sdk/OfferwallApi;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    .line 194
    return-void
.end method

.method public getOfferwallCredits()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;->getOfferwallCredits()V

    .line 250
    :cond_0
    return-void
.end method

.method public hasProviders()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1, p3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :cond_0
    new-instance v0, Lcom/supersonic/mediationsdk/OfferwallManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/supersonic/mediationsdk/OfferwallManager$1;-><init>(Lcom/supersonic/mediationsdk/OfferwallManager;Landroid/app/Activity;Ljava/lang/String;)V

    .line 111
    const-string v1, "OfferwallInitiator"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

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

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOfferwallAvailable()Z
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    const/4 v0, 0x0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 242
    :cond_0
    monitor-exit p0

    return v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFail("

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

    .line 295
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 296
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    return v0
.end method

.method public onOfferwallClosed()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 301
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallClosed()V

    .line 302
    return-void
.end method

.method public onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallInitFail("

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

    .line 271
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/OfferwallManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 272
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 261
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallInitSuccess()"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 265
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitSuccess()V

    .line 266
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 278
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallOpened()V

    .line 279
    return-void
.end method

.method public onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFail("

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

    .line 284
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 285
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setAge(I)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .line 255
    return-void
.end method

.method public showOfferwall()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/supersonic/mediationsdk/OfferwallManager;->mAdapter:Lcom/supersonic/mediationsdk/sdk/OfferwallApi;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallApi;->showOfferwall()V

    .line 232
    :cond_0
    return-void
.end method
