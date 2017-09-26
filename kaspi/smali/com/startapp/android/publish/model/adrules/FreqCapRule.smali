.class public Lcom/startapp/android/publish/model/adrules/FreqCapRule;
.super Lcom/startapp/android/publish/model/adrules/AdRule;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cap:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/model/adrules/AdRule;-><init>(Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/model/adrules/FreqCapRule;-><init>()V

    .line 25
    iput p1, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->time:I

    .line 26
    iput p2, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->cap:I

    .line 27
    return-void
.end method


# virtual methods
.method public shouldDisplayAd(Ljava/util/List;)Z
    .locals 10
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    if-nez p1, :cond_1

    iget v0, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->cap:I

    if-lez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v3

    .line 33
    :cond_1
    iget v0, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->cap:I

    if-gtz v0, :cond_2

    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget v0, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->time:I

    if-eqz v0, :cond_0

    .line 40
    iget v0, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->time:I

    if-gez v0, :cond_5

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 50
    :cond_3
    iget v0, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->cap:I

    if-ge v1, v0, :cond_4

    move v2, v3

    :cond_4
    move v3, v2

    goto :goto_0

    .line 43
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;->getDisplayTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->time:I

    int-to-long v8, v5

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_6

    .line 45
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreqCapRule [time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/android/publish/model/adrules/FreqCapRule;->cap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
