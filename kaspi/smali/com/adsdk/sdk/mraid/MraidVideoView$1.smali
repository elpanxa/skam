.class Lcom/adsdk/sdk/mraid/MraidVideoView$1;
.super Ljava/lang/Object;
.source "MraidVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/mraid/MraidVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidVideoView;

.field private final synthetic val$baseVideoViewListener:Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidVideoView;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidVideoView$1;->this$0:Lcom/adsdk/sdk/mraid/MraidVideoView;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidVideoView$1;->val$baseVideoViewListener:Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoView$1;->val$baseVideoViewListener:Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoView$1;->val$baseVideoViewListener:Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;->videoCompleted(Z)V

    .line 51
    :cond_0
    return-void
.end method
