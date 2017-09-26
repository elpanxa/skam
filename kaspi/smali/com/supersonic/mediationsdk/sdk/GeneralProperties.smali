.class public Lcom/supersonic/mediationsdk/sdk/GeneralProperties;
.super Ljava/lang/Object;
.source "GeneralProperties.java"


# static fields
.field private static mInstance:Lcom/supersonic/mediationsdk/sdk/GeneralProperties;


# instance fields
.field private mProperties:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    .line 16
    return-void
.end method

.method public static declared-synchronized getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    .line 22
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mInstance:Lcom/supersonic/mediationsdk/sdk/GeneralProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized putKeys(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 28
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->mProperties:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
