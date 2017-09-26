.class Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity$1;
.super Lcom/adsdk/sdk/mraid/BaseVideoView;
.source "MraidVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createVideoView()Lcom/adsdk/sdk/mraid/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity$1;->this$0:Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;

    .line 174
    invoke-direct {p0, p2}, Lcom/adsdk/sdk/mraid/BaseVideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method
