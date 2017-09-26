.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
.super Lcom/supersonic/mediationsdk/AbstractAdapter;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialApi;
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallApi;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;
.implements Lcom/supersonicads/sdk/listeners/OnOfferWallListener;


# static fields
.field private static mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;


# instance fields
.field private final ITEM_SIGNATURE:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field private mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

.field private mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

.field private mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "6.3.5"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->VERSION:Ljava/lang/String;

    .line 42
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TIMESTAMP:Ljava/lang/String;

    .line 43
    const-string v0, "itemSignature"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_SIGNATURE:Ljava/lang/String;

    .line 44
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 46
    const-class v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;-><init>()V

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    .line 68
    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setInterstitialSupport(Z)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setOfferwallSupport(Z)V

    .line 71
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getDynamicControllerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->setDebugMode(I)V

    .line 73
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getControllerConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonicads/sdk/SSAPublisher;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/PlacementsHolder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mPlacementHolder:Lcom/supersonic/mediationsdk/model/PlacementsHolder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getRewardedVideoExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setRVInitStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->setRVInitStatus(Z)V

    return-void
.end method

.method private addItemNameCountSignature(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getItemName()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getItemCount()I

    move-result v3

    .line 208
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v4

    .line 210
    const/4 v1, 0x1

    .line 212
    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v0

    .line 217
    :goto_0
    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    .line 220
    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 226
    :goto_1
    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getCurrentTimestamp()I

    move-result v0

    .line 228
    const-string v1, "timestamp"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "itemSignature"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    :goto_2
    return-void

    .line 215
    :cond_2
    const-string v5, "itemName"

    invoke-virtual {p1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":addItemNameCountSignature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 223
    :cond_3
    :try_start_1
    const-string v0, "itemCount"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1
.end method

.method private createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMinimumOfferCommissionSig(DLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUserCreationDateSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenenralExtraParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getUserAgeGroup()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const-string v3, "applicationUserAgeGroup"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getUserGender()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    const-string v3, "applicationUserGender"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getPluginType()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    const-string v2, "SDKPluginType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_2
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .line 61
    :cond_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    return-object v0
.end method

.method private getInterstitialExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method private getOfferwallExtraParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getClientSideCallbacks()Z

    move-result v2

    .line 190
    const-string v3, "useClientSideCallbacks"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getOfferwallCustomParams()Ljava/util/Map;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 197
    :cond_1
    invoke-direct {p0, v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 199
    return-object v0
.end method

.method private getRewardedVideoExtraParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideoLength()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    const-string v3, "maxVideoLength"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    const-string v3, "campaignId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    invoke-direct {p0, v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 154
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getRewardedVideoCustomParams()Ljava/util/Map;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 158
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxVideosPerIteration()I
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideosPerIteration()I

    move-result v0

    return v0
.end method

.method public getOfferwallCredits()V
    .locals 5

    .prologue
    .line 587
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 588
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v1

    .line 589
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v0

    .line 591
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":getOfferwallCredits(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 594
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v2, v1, v0, p0}, Lcom/supersonicads/sdk/SSAPublisher;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling getOfferwallCredits"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "6.3.5"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 499
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitInterstitialEvent(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getInterstitialExtraParams()Ljava/util/HashMap;

    move-result-object v5

    .line 503
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":initInterstitial(appKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 507
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitOfferwallEvent(Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":initOfferwall(appKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 260
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":initOfferwall(userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    const-string v1, "Offerwall init failed"

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildAdapterInitFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 279
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyInitRewardedVideoEvent(Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":initRewardedVideo(userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 283
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->reset()V

    .line 285
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getMaxVideos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setMaxVideo(I)V

    .line 292
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->startTimer(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 293
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isInterstitialAdAvailable()Z
    .locals 3

    .prologue
    .line 486
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":isInterstitialAdAvailable()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 488
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->isInterstitialAdAvailable()Z

    move-result v0

    .line 493
    :goto_0
    return v0

    .line 491
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling isInterstitialAdAvailable"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 493
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfferwallAvailable()Z
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v0

    .line 441
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":isRewardedVideoAvailable():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGetOWCreditsFailed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 669
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 670
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 672
    :cond_0
    return-void
.end method

.method public onOWAdClosed()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallClosed()V

    .line 663
    :cond_0
    return-void
.end method

.method public onOWAdCredited(IIZ)Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method public onOWShowFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 641
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 645
    :cond_0
    return-void
.end method

.method public onOWShowSuccess()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallOpened()V

    .line 635
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 398
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 400
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    .line 402
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 420
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 422
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    .line 425
    :cond_0
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 430
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 432
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->release(Landroid/app/Activity;)V

    .line 434
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 3

    .prologue
    .line 406
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setUserAgeGroup(I)V

    .line 407
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setAge(age:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 408
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 412
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->setUserGender(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setGender(gender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 415
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .line 482
    return-void
.end method

.method public setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .line 603
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .line 450
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 572
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":showInterstitial()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 574
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->showInterstitial()V

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling showInterstitial"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showOfferwall()V
    .locals 6

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams()Ljava/util/HashMap;

    move-result-object v1

    .line 610
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v0

    .line 613
    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":showOfferwall(appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extraParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 617
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v3, v2, v0, v1, p0}, Lcom/supersonicads/sdk/SSAPublisher;->showOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling showOfferwall"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 459
    invoke-static {}, Lcom/supersonic/mediationsdk/events/EventsHelper;->getInstance()Lcom/supersonic/mediationsdk/events/EventsHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/events/EventsHelper;->notifyShowRewardedVideoEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_1

    .line 462
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":showRewardedVideo(placement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 464
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->showRewardedVideo()V

    .line 465
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->setPlacementName(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->increaseCurrentVideo()Z

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call init before calling showRewardedVideo"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method
