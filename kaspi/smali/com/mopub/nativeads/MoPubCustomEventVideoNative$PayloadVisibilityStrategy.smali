.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;


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
    name = "PayloadVisibilityStrategy"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;->mContext:Landroid/content/Context;

    .line 856
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;->mUrl:Ljava/lang/String;

    .line 857
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 862
    return-void
.end method
