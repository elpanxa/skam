.class Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;
.super Ljava/lang/Object;
.source "NativeVideoController.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExoPlayerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;
    .locals 1

    .prologue
    .line 475
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    return-object v0
.end method
