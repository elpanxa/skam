.class public Lcom/supersonic/mediationsdk/config/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# static fields
.field public static final DEFAULT_AMOUNT_WARNING_MESSAGE:Ljava/lang/String; = "Rewards amount doesn\'t exist in configuration, value was set to 1. Edit configurations file in order to change the value"

.field public static final DEFAULT_REWARD_AMOUNT:I = 0x1

.field private static mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;


# instance fields
.field private final CONFIG_ADAPTERS:Ljava/lang/String;

.field private final CONFIG_FILE_DEFAULT_PATH:Ljava/lang/String;

.field private final CONFIG_PROVIDER_NAME:Ljava/lang/String;

.field private final CONFIG_PROVIDER_SETTINGS:Ljava/lang/String;

.field private final CONFIG_PROVIDER_VERSION:Ljava/lang/String;

.field private final CONFIG_TEST_FILE:Ljava/lang/String;

.field private final CONFIG_TEST_FOLDER:Ljava/lang/String;

.field protected final TAG:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mPluginVersion:Ljava/lang/String;

.field private mProvidersConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/supersonic/mediationsdk/config/ConfigFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "adapters"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_ADAPTERS:Ljava/lang/String;

    .line 18
    const-string v0, "name"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_PROVIDER_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "version"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_PROVIDER_VERSION:Ljava/lang/String;

    .line 20
    const-string v0, "settings"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_PROVIDER_SETTINGS:Ljava/lang/String;

    .line 22
    const-string v0, "supersonic.config"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_TEST_FILE:Ljava/lang/String;

    .line 23
    const-string v0, "SupersonicTest"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_TEST_FOLDER:Ljava/lang/String;

    .line 25
    const-string v0, "/supersonic.config"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->CONFIG_FILE_DEFAULT_PATH:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public static declared-synchronized getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/supersonic/mediationsdk/config/ConfigFile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/supersonic/mediationsdk/config/ConfigFile;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/config/ConfigFile;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;

    .line 47
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mInstance:Lcom/supersonic/mediationsdk/config/ConfigFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPluginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCoreSdkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 86
    const-string v1, ""

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 93
    if-eqz v0, :cond_0

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProviderCoreSdkVersion(providerName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getProviderJsonSettings(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mProvidersConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProviderJSONSettings(providerName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    if-eqz p1, :cond_1

    .line 110
    const-string v0, "Unity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdobeAir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Xamarin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    .line 114
    :cond_1
    if-eqz p2, :cond_2

    .line 115
    iput-object p2, p0, Lcom/supersonic/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    .line 117
    :cond_2
    return-void
.end method
