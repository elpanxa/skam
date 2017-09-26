.class public Lcom/mopub/nativeads/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;
    }
.end annotation


# instance fields
.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mClickTrackers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mImpressionTrackers:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClicked:Z

.field private mIsDestroyed:Z

.field private final mMoPubAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRecordedImpression:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/nativeads/BaseNativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mContext:Landroid/content/Context;

    .line 73
    iput-object p4, p0, Lcom/mopub/nativeads/NativeAd;->mAdUnitId:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mImpressionTrackers:Ljava/util/Set;

    .line 76
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-virtual {p5}, Lcom/mopub/nativeads/BaseNativeAd;->getImpressionTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mClickTrackers:Ljava/util/Set;

    .line 80
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-virtual {p5}, Lcom/mopub/nativeads/BaseNativeAd;->getClickTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    iput-object p5, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    .line 84
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    new-instance v1, Lcom/mopub/nativeads/NativeAd$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeAd$1;-><init>(Lcom/mopub/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/BaseNativeAd;->setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V

    .line 96
    iput-object p6, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 97
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/BaseNativeAd;->clear(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createAdView(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-interface {v0, p1, p2}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->destroy()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    return-object v0
.end method

.method public getMoPubAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    return-object v0
.end method

.method handleClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsClicked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mClickTrackers:Ljava/util/Set;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAd;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onClick(Landroid/view/View;)V

    .line 218
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsClicked:Z

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/BaseNativeAd;->prepare(Landroid/view/View;)V

    goto :goto_0
.end method

.method recordImpression(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mRecordedImpression:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mImpressionTrackers:Ljava/util/Set;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAd;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onImpression(Landroid/view/View;)V

    .line 204
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->mRecordedImpression:Z

    goto :goto_0
.end method

.method public renderAdView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubAdRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAd;->mBaseNativeAd:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/MoPubAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 143
    return-void
.end method

.method public setMoPubNativeEventListener(Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;)V
    .locals 0
    .param p1    # Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAd;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v1, "impressionTrackers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeAd;->mImpressionTrackers:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "clickTrackers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeAd;->mClickTrackers:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "recordedImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAd;->mRecordedImpression:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "isClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAd;->mIsClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "isDestroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAd;->mIsDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
