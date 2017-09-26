.class public Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
.super Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
.source "SupersonicConfig.java"


# static fields
.field public static final AGE:Ljava/lang/String; = "age"

.field public static final APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field public static final APPLICATION_PRIVATE_KEY:Ljava/lang/String; = "privateKey"

.field public static final APPLICATION_USER_AGE_GROUP:Ljava/lang/String; = "applicationUserAgeGroup"

.field public static final APPLICATION_USER_GENDER:Ljava/lang/String; = "applicationUserGender"

.field public static final CAMPAIGN_ID:Ljava/lang/String; = "campaignId"

.field public static final CLIENT_SIDE_CALLBACKS:Ljava/lang/String; = "useClientSideCallbacks"

.field private static final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String; = "controllerConfig"

.field private static final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String; = "debugMode"

.field private static final DYNAMIC_CONTROLLER_URL:Ljava/lang/String; = "controllerUrl"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field public static final ITEM_NAME:Ljava/lang/String; = "itemName"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MAX_VIDEO_LENGTH:Ljava/lang/String; = "maxVideoLength"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "SupersonicAds"

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field private static mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;


# instance fields
.field private final CUSTOM_PARAM_PREFIX:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mOfferwallCustomParams:Ljava/util/Map;
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

.field private mRewardedVideoCustomParams:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;-><init>()V

    .line 23
    const-class v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "custom_"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CUSTOM_PARAM_PREFIX:Ljava/lang/String;

    .line 47
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private convertCustomParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 206
    if-eqz p1, :cond_1

    .line 209
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":convertCustomParams()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :cond_1
    return-object v2
.end method

.method public static declared-synchronized getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    invoke-direct {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;-><init>()V

    sput-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    .line 71
    :cond_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private validateAgeGroup(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 469
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 471
    if-ltz v0, :cond_0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 472
    :cond_0
    const-string v0, "applicationUserAgeGroup"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_1
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const-string v0, "applicationUserAgeGroup"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateApplicationKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 584
    const-string v1, "^[a-zA-Z0-9]*$"

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, "applicationKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationKey value should contains only english characters and numbers"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const-string v0, "applicationKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationKey length should be between 5-10 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 594
    :cond_2
    const-string v0, "applicationKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationKey value is missing"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateClientSideCallbacks(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 1

    .prologue
    .line 499
    const-string v0, "useClientSideCallbacks"

    invoke-virtual {p0, v0, p1, p2}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 500
    return-void
.end method

.method private validateDynamicUrl(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "controllerUrl"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controllerUrl is missing"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 574
    :cond_0
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 483
    if-eqz p1, :cond_0

    .line 484
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string v1, "male"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "female"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const-string v0, "gender"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gender value should be one of male/female/unknown."

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    const-string v0, "gender"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gender value should be one of male/female/unknown."

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateItemCount(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 400
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 402
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const v1, 0x186a0

    if-le v0, v1, :cond_1

    .line 403
    :cond_0
    const-string v0, "itemCount"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemCount value should be between 1-100000"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    const-string v0, "itemCount"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemCount value should be between 1-100000"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateItemName(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 412
    if-eqz p1, :cond_2

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 415
    :cond_0
    const-string v0, "itemName"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    const-string v0, "itemName"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateLanguage(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 455
    if-eqz p1, :cond_2

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v1, "^[a-zA-Z]*$"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 460
    :cond_0
    const-string v0, "language"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language value should be two letters format."

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    const-string v0, "language"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language value should be two letters format."

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateMaxVideoLength(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 444
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 445
    :cond_0
    const-string v0, "maxVideoLength"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxVideoLength value should be between 1-1000"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string v0, "maxVideoLength"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxVideoLength value should be between 1-1000"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validatePrivateKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 424
    if-eqz p1, :cond_2

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    .line 426
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const-string v0, "privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privateKey should contains only characters and numbers"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v0, "privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privateKey length should be between 5-30 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 436
    :cond_2
    const-string v0, "privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "privateKey length should be between 5-30 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 545
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    :cond_0
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 553
    :cond_1
    const-string v0, "itemName, itemCount or privateKey"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "configure itemName/itemCount requires the following configurations: itemName, itemCount and privateKey"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 557
    :cond_2
    return-void
.end method

.method private validateUserId(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    .line 561
    if-eqz p1, :cond_2

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 563
    :cond_0
    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId value should be between 1-64 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 565
    :cond_2
    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId is missing"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method


# virtual methods
.method protected adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 1

    .prologue
    .line 529
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    const-string v0, ""

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method getCampaignId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "campaignId"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method public getClientSideCallbacks()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 115
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "useClientSideCallbacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "useClientSideCallbacks"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getControllerConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDebugMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    .line 96
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "debugMode"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 99
    :cond_0
    return v0
.end method

.method getDynamicControllerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "controllerUrl"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 6

    .prologue
    .line 168
    const/4 v0, -0x1

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "itemCount"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":getItemCount()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "itemName"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "language"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public getMaxVideoLength()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "maxVideoLength"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method getMaxVideos()I
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideosToPresent()I

    move-result v0

    return v0
.end method

.method getMaxVideosPerIteration()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideosPerIterationToPresent()I

    move-result v0

    return v0
.end method

.method public getOfferwallCustomParams()Ljava/util/Map;
    .locals 1
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
    .line 195
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mOfferwallCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method getPluginType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "SDKPluginType"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    const-string v0, ""

    .line 154
    :cond_0
    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "privateKey"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method protected getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "SupersonicAds"

    return-object v0
.end method

.method public getRewardedVideoCustomParams()Ljava/util/Map;
    .locals 1
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
    .line 199
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mRewardedVideoCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method getUserAgeGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "applicationUserAgeGroup"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method getUserGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "applicationUserGender"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->get(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method protected initializeMandatoryFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    return-object v0
.end method

.method protected initializeOptionalFields()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    const-string v1, "useClientSideCallbacks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v1, "maxVideosPerSession"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v1, "maxVideosPerIteration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v1, "maxVideoLength"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v1, "itemCount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v1, "SDKPluginType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v1, "debugMode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    const-string v0, "campaignId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public setClientSideCallbacks(Z)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "useClientSideCallbacks"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setCustomControllerUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "controllerUrl"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setDebugMode(I)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "debugMode"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public setItemCount(I)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "itemCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "itemName"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "language"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public setMaxVideoLength(I)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "maxVideoLength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setOfferwallCustomParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->convertCustomParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mOfferwallCustomParams:Ljava/util/Map;

    .line 301
    return-void
.end method

.method public setPluginType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 288
    if-eqz p1, :cond_1

    .line 289
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

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "SDKPluginType"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "privateKey"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public setRewardedVideoCustomParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->convertCustomParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mRewardedVideoCustomParams:Ljava/util/Map;

    .line 297
    return-void
.end method

.method setUserAgeGroup(I)V
    .locals 3

    .prologue
    .line 236
    const-string v0, "0"

    .line 238
    const/16 v1, 0xd

    if-lt p1, v1, :cond_1

    const/16 v1, 0x11

    if-gt p1, v1, :cond_1

    .line 239
    const-string v0, "1"

    .line 256
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v2, "applicationUserAgeGroup"

    invoke-static {v1, v2, v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 240
    :cond_1
    const/16 v1, 0x12

    if-lt p1, v1, :cond_2

    const/16 v1, 0x14

    if-gt p1, v1, :cond_2

    .line 241
    const-string v0, "2"

    goto :goto_0

    .line 242
    :cond_2
    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    const/16 v1, 0x18

    if-gt p1, v1, :cond_3

    .line 243
    const-string v0, "3"

    goto :goto_0

    .line 244
    :cond_3
    const/16 v1, 0x19

    if-lt p1, v1, :cond_4

    const/16 v1, 0x22

    if-gt p1, v1, :cond_4

    .line 245
    const-string v0, "4"

    goto :goto_0

    .line 246
    :cond_4
    const/16 v1, 0x23

    if-lt p1, v1, :cond_5

    const/16 v1, 0x2c

    if-gt p1, v1, :cond_5

    .line 247
    const-string v0, "5"

    goto :goto_0

    .line 248
    :cond_5
    const/16 v1, 0x2d

    if-lt p1, v1, :cond_6

    const/16 v1, 0x36

    if-gt p1, v1, :cond_6

    .line 249
    const-string v0, "6"

    goto :goto_0

    .line 250
    :cond_6
    const/16 v1, 0x37

    if-lt p1, v1, :cond_7

    const/16 v1, 0x40

    if-gt p1, v1, :cond_7

    .line 251
    const-string v0, "7"

    goto :goto_0

    .line 252
    :cond_7
    const/16 v1, 0x41

    if-le p1, v1, :cond_0

    const/16 v1, 0x78

    if-gt p1, v1, :cond_0

    .line 253
    const-string v0, "8"

    goto :goto_0
.end method

.method setUserGender(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mJsonSettings:Lorg/json/JSONObject;

    const-string v1, "applicationUserGender"

    invoke-static {v0, v1, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method protected validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 509
    const-string v1, "applicationKey"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateApplicationKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const-string v1, "userId"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 513
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateUserId(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 520
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 515
    :cond_2
    :try_start_1
    const-string v1, "controllerUrl"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateDynamicUrl(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 521
    :catch_1
    move-exception v0

    .line 522
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method protected validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    :try_start_0
    const-string v0, "maxVideosPerSession"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    invoke-virtual {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateMaxVideos(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string v0, "maxVideosPerIteration"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "debugMode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const-string v0, "controllerConfig"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    const-string v1, "useClientSideCallbacks"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateClientSideCallbacks(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 391
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 366
    :cond_2
    :try_start_1
    const-string v1, "applicationUserGender"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 392
    :catch_1
    move-exception v0

    .line 393
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 369
    :cond_3
    :try_start_2
    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateAgeGroup(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 372
    :cond_4
    const-string v1, "language"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateLanguage(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 375
    :cond_5
    const-string v1, "maxVideoLength"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 376
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateMaxVideoLength(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 378
    :cond_6
    const-string v1, "privateKey"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 379
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validatePrivateKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto/16 :goto_0

    .line 381
    :cond_7
    const-string v1, "itemName"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 382
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateItemName(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto/16 :goto_0

    .line 384
    :cond_8
    const-string v1, "itemCount"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-direct {p0, v0, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->validateItemCount(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
