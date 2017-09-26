.class public Lcom/avocarrot/androidsdk/VisibilityConditions;
.super Ljava/lang/Object;
.source "VisibilityConditions.java"


# instance fields
.field private minTimeOnDisplay:J

.field private minVisibilityPercentage:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minTimeOnDisplay:J

    .line 9
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minVisibilityPercentage:J

    .line 12
    iput-wide p1, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minVisibilityPercentage:J

    .line 13
    iput-wide p3, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minTimeOnDisplay:J

    .line 14
    return-void
.end method


# virtual methods
.method public getMinTimeOnScreen()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minTimeOnDisplay:J

    return-wide v0
.end method

.method public getMinVisibilityPercentage()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minVisibilityPercentage:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minTimeOnDisplay:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MinVisibilityPercentage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/avocarrot/androidsdk/VisibilityConditions;->minVisibilityPercentage:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
