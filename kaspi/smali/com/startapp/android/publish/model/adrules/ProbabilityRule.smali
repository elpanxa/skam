.class public Lcom/startapp/android/publish/model/adrules/ProbabilityRule;
.super Lcom/startapp/android/publish/model/adrules/AdRule;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private probability:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/model/adrules/AdRule;-><init>(Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/startapp/android/publish/model/adrules/ProbabilityRule;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/startapp/android/publish/model/adrules/ProbabilityRule;->probability:D

    .line 22
    return-void
.end method


# virtual methods
.method public shouldDisplayAd(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/model/adrules/ProbabilityRule;->probability:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProbabilityRule [probability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/startapp/android/publish/model/adrules/ProbabilityRule;->probability:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
