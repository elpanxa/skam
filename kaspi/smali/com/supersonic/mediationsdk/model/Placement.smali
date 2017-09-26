.class public Lcom/supersonic/mediationsdk/model/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# instance fields
.field private mId:I

.field private mPlacementName:Ljava/lang/String;

.field private mRewardAmount:I

.field private mRewardName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/supersonic/mediationsdk/model/Placement;->mId:I

    .line 15
    iput-object p2, p0, Lcom/supersonic/mediationsdk/model/Placement;->mPlacementName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/supersonic/mediationsdk/model/Placement;->mRewardName:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/supersonic/mediationsdk/model/Placement;->mRewardAmount:I

    .line 18
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/supersonic/mediationsdk/model/Placement;->mId:I

    return v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/Placement;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/supersonic/mediationsdk/model/Placement;->mRewardAmount:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/Placement;->mRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placement name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/Placement;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reward name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/Placement;->mRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , amount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/supersonic/mediationsdk/model/Placement;->mRewardAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
