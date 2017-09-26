.class public Lcom/avocarrot/androidsdk/AvocarrotInstreamController;
.super Lcom/avocarrot/androidsdk/BaseController;
.source "AvocarrotInstreamController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avocarrot/androidsdk/BaseController",
        "<",
        "Lcom/avocarrot/androidsdk/AvocarrotInstreamListener;",
        ">;"
    }
.end annotation


# instance fields
.field adReqSlotsDecrease:Ljava/lang/Integer;

.field adReqSlotsMax:Ljava/lang/Integer;

.field adReqSlotsMin:Ljava/lang/Integer;

.field adsFreq:I

.field adsStart:I

.field commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

.field instreamView:Lcom/avocarrot/androidsdk/InstreamView;

.field nativeAdMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field nativeAdPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field slotsToRequest:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/avocarrot/androidsdk/CommonAdapter;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/avocarrot/androidsdk/BaseController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMax:Ljava/lang/Integer;

    .line 28
    iput-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMin:Ljava/lang/Integer;

    .line 30
    iput v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    .line 32
    iput v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    .line 34
    iput-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsDecrease:Ljava/lang/Integer;

    .line 37
    iput-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    .line 41
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    .line 47
    iput-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    .line 51
    iput-object p4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    .line 52
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->updateConfigValues()V

    .line 53
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMax:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    .line 54
    return-void
.end method


# virtual methods
.method public adItemViewType()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/CommonAdapter;->getAdItemViewType()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseController;->clear()V

    .line 216
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/InstreamView;->clear()V

    .line 219
    :cond_2
    return-void
.end method

.method public createVisibilityConditions()Lcom/avocarrot/androidsdk/VisibilityConditions;
    .locals 6

    .prologue
    .line 124
    new-instance v0, Lcom/avocarrot/androidsdk/VisibilityConditions;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityPercentage:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v4, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityMinTime:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/avocarrot/androidsdk/VisibilityConditions;-><init>(JJ)V

    return-object v0
.end method

.method getAdsCountToFillList()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/CommonAdapter;->getCommonCount()I

    move-result v0

    iget v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/CommonAdapter;->getCommonCount()I

    move-result v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->isAdSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-wide/16 v0, -0x1

    .line 272
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->normalizePos(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/avocarrot/androidsdk/CommonAdapter;->getCommonItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->isValidAdSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adItemViewType()I

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->normalizePos(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/avocarrot/androidsdk/CommonAdapter;->getCommonItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method isAdSlot(I)Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isValidAdSlot(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    .line 170
    iget v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    if-nez v0, :cond_3

    .line 172
    iget v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    sub-int v0, p1, v0

    if-nez v0, :cond_2

    move v0, v1

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->getAdsCountToFillList()I

    move-result v3

    .line 179
    iget-object v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-interface {v4}, Lcom/avocarrot/androidsdk/CommonAdapter;->getCommonCount()I

    move-result v4

    add-int/2addr v3, v4

    if-ne p1, v3, :cond_0

    move v0, v2

    .line 181
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    iget-object v3, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    invoke-virtual {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->moveAdFromPoolToList(I)V

    .line 190
    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 172
    goto :goto_0

    .line 175
    :cond_3
    iget v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    sub-int v0, p1, v0

    iget v3, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 190
    goto :goto_1
.end method

.method moveAdFromPoolToList(I)V
    .locals 7

    .prologue
    .line 194
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 196
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->updateVisibleAds()V

    .line 198
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Funnel|moveAdFromPoolToList"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "position"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "model"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->requestAds()V

    .line 204
    :cond_1
    return-void
.end method

.method normalizePos(I)I
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return p1

    .line 153
    :cond_1
    iget v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    if-lt p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method public notifyUserDataSetChanged()V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-interface {v3}, Lcom/avocarrot/androidsdk/CommonAdapter;->getCommonCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 137
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto :goto_0
.end method

.method public onBindViewWithModel(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0, p2}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->isAdSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 224
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    invoke-virtual {v1, p1, v0}, Lcom/avocarrot/androidsdk/InstreamView;->onBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)Landroid/view/View;

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->bindAdModel2AdView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V

    .line 227
    :cond_0
    return-void
.end method

.method onLoadAdDone(Z)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdDone(Z)V

    .line 98
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/avocarrot/androidsdk/InstreamDynamicView;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    iget-object v2, v2, Lcom/avocarrot/androidsdk/Avocarrot;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    iget-object v2, v2, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/DynamicLayoutManager;->getLayoutForPlacement(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avocarrot/androidsdk/InstreamDynamicView;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamController;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->getPoolAds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 103
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdPool:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->updateConfigValues()V

    .line 108
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->updateVisibleAds()V

    .line 110
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsDecrease:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    .line 112
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotInstreamListener;

    .line 113
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamListener;->onAdLoaded()V

    .line 114
    :cond_2
    return-void
.end method

.method onLoadAdFail(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdFail(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V

    .line 119
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method requestAds()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "The placement key is missing."

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->getAdsCountToFillList()I

    move-result v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    .line 90
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->loadAd(IZ)V

    goto :goto_0
.end method

.method public setFrequency(II)V
    .locals 3

    .prologue
    .line 60
    if-ltz p1, :cond_0

    .line 61
    iput p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    .line 66
    if-gez p2, :cond_1

    .line 67
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set frequency: value was negative. The default value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was used instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set starting position: value was negative. The default value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was used instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    if-nez p2, :cond_2

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->updateConfigValues()V

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    goto :goto_1
.end method

.method public setLayout(IIIIIII)V
    .locals 9

    .prologue
    .line 230
    new-instance v0, Lcom/avocarrot/androidsdk/InstreamXMLView;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/avocarrot/androidsdk/InstreamXMLView;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInstreamController;IIIIIII)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->instreamView:Lcom/avocarrot/androidsdk/InstreamView;

    .line 231
    return-void
.end method

.method public bridge synthetic setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/avocarrot/androidsdk/BaseController;->setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSandbox(Z)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseController;->setSandbox(Z)V

    return-void
.end method

.method updateConfigValues()V
    .locals 5

    .prologue
    .line 235
    iget v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 236
    iget v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsMax:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    iget-object v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMax:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMax:Ljava/lang/Integer;

    .line 239
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    iget-object v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMin:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMin:Ljava/lang/Integer;

    .line 240
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsDecrease:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    iget-object v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsDecrease:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsDecrease:Ljava/lang/Integer;

    .line 241
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->positionStart:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    iget v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    .line 242
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->placementName:Ljava/lang/String;

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->positionFreq:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    iget v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    .line 244
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adReqSlotsMax:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->slotsToRequest:Ljava/lang/Integer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsStart:I

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->adsFreq:I

    if-eq v0, v1, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->nativeAdMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 248
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->updateVisibleAds()V

    .line 251
    :cond_1
    return-void
.end method

.method updateVisibleAds()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInstreamController;->commonAdapter:Lcom/avocarrot/androidsdk/CommonAdapter;

    invoke-interface {v0}, Lcom/avocarrot/androidsdk/CommonAdapter;->onCommonAdapterCountNotifyDataSetChanged()V

    .line 143
    return-void
.end method
