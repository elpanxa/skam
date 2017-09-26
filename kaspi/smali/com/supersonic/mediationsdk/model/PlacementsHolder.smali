.class public Lcom/supersonic/mediationsdk/model/PlacementsHolder;
.super Ljava/lang/Object;
.source "PlacementsHolder.java"


# static fields
.field private static final DEFAULT_PLACEMENT_ID:I


# instance fields
.field private mDefaultRewardedVideo:Lcom/supersonic/mediationsdk/model/Placement;

.field private mRewardedVideoPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/model/Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->mRewardedVideoPlacements:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public addRewardedVideoPlacement(Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 1

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->mRewardedVideoPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->mDefaultRewardedVideo:Lcom/supersonic/mediationsdk/model/Placement;

    .line 27
    :cond_0
    return-void
.end method

.method public getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->mDefaultRewardedVideo:Lcom/supersonic/mediationsdk/model/Placement;

    return-object v0
.end method

.method public getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;
    .locals 4

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/PlacementsHolder;->mRewardedVideoPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/model/Placement;

    .line 35
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
