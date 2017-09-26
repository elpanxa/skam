.class public Lcom/supersonicads/sdk/data/AdUnitsState;
.super Ljava/lang/Object;
.source "AdUnitsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/supersonicads/sdk/data/AdUnitsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayedProduct:I

.field private mInterstitialAppKey:Ljava/lang/String;

.field private mInterstitialExtraParams:Ljava/util/Map;
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

.field private mInterstitialInitSuccess:Z

.field private mInterstitialReportInit:Z

.field private mInterstitialUserId:Ljava/lang/String;

.field private mRewardedVideoAppKey:Ljava/lang/String;

.field private mRewardedVideoExtraParams:Ljava/util/Map;
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

.field private mRewardedVideoInitSuccess:Z

.field private mRewardedVideoUserId:Ljava/lang/String;

.field private mShouldRestore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/supersonicads/sdk/data/AdUnitsState$1;

    invoke-direct {v0}, Lcom/supersonicads/sdk/data/AdUnitsState$1;-><init>()V

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/AdUnitsState;->initialize()V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/AdUnitsState;->initialize()V

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoInitSuccess:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoAppKey:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoUserId:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/supersonicads/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoExtraParams:Ljava/util/Map;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    iput-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_4
    return-void

    :cond_0
    move v2, v1

    .line 48
    goto :goto_0

    :cond_1
    move v2, v1

    .line 52
    goto :goto_1

    :cond_2
    move v2, v1

    .line 59
    goto :goto_2

    :cond_3
    move v0, v1

    .line 60
    goto :goto_3

    .line 64
    :catch_0
    move-exception v0

    .line 66
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/AdUnitsState;->initialize()V

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/supersonicads/sdk/data/AdUnitsState$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/data/AdUnitsState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 235
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    :cond_0
    :goto_1
    return-object v1

    .line 248
    :catch_1
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    .line 78
    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoInitSuccess:Z

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoAppKey:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoExtraParams:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public adClosed()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public adOpened(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedProduct()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return v0
.end method

.method public getInterstitialAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialExtraParams()Ljava/util/Map;
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
    .line 153
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getInterstitialUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoExtraParams()Ljava/util/Map;
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
    .line 142
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRewardedVideoUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isInterstitialInitSuccess()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    return v0
.end method

.method public isRewardedVideoInitSuccess()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoInitSuccess:Z

    return v0
.end method

.method public reportInitInterstitial()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    return v0
.end method

.method public setInterstitialAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setInterstitialExtraParams(Ljava/util/Map;)V
    .locals 0
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
    .line 203
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 204
    return-void
.end method

.method public setInterstitialInitSuccess(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    .line 192
    return-void
.end method

.method public setInterstitialUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setReportInitInterstitial(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    .line 208
    return-void
.end method

.method public setRewardedVideoAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoAppKey:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setRewardedVideoExtraParams(Ljava/util/Map;)V
    .locals 0
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
    .line 181
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoExtraParams:Ljava/util/Map;

    .line 182
    return-void
.end method

.method public setRewardedVideoInitSuccess(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoInitSuccess:Z

    .line 170
    return-void
.end method

.method public setRewardedVideoUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoUserId:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setShouldRestore(Z)V
    .locals 0

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 214
    return-void
.end method

.method public shouldRestore()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    :try_start_0
    const-string v1, "shouldRestore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "displayedProduct:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "RVInitSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "RVAppKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "RVUserId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "RVExtraParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "ISReportInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "ISInitSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "ISAppKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "ISUserId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "ISExtraParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    :try_start_0
    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    iget v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoInitSuccess:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoAppKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRewardedVideoExtraParams:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    if-eqz v2, :cond_3

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_4
    return-void

    :cond_0
    move v2, v1

    .line 96
    goto :goto_0

    :cond_1
    move v2, v1

    .line 101
    goto :goto_1

    :cond_2
    move v2, v1

    .line 107
    goto :goto_2

    :cond_3
    move v0, v1

    .line 108
    goto :goto_3

    .line 112
    :catch_0
    move-exception v0

    goto :goto_4
.end method
