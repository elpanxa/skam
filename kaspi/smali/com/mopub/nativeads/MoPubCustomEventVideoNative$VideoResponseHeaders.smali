.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoResponseHeaders"
.end annotation


# instance fields
.field private mHeadersAreValid:Z

.field private mImpressionMinVisiblePercent:I

.field private mImpressionVisibleMs:I

.field private mMaxBufferMs:I

.field private mPauseVisiblePercent:I

.field private mPlayVisiblePercent:I


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    :try_start_0
    const-string v0, "Play-Visible-Percent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    .line 894
    const-string v0, "Pause-Visible-Percent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    .line 895
    const-string v0, "Impression-Min-Visible-Percent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    .line 897
    const-string v0, "Impression-Visible-Ms"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    .line 898
    const-string v0, "Max-Buffer-Ms"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    goto :goto_0
.end method


# virtual methods
.method getImpressionMinVisiblePercent()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    return v0
.end method

.method getImpressionVisibleMs()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    return v0
.end method

.method getMaxBufferMs()I
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    return v0
.end method

.method getPauseVisiblePercent()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    return v0
.end method

.method getPlayVisiblePercent()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    return v0
.end method

.method hasValidHeaders()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    return v0
.end method
