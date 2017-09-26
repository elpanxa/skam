.class Lcom/mopub/nativeads/NativeVideoViewController$1;
.super Ljava/lang/Object;
.source "NativeVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeVideoViewController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeVideoViewController;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$1;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$1;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # getter for: Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$000(Lcom/mopub/nativeads/NativeVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$1;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    const/4 v1, 0x0

    # setter for: Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$002(Lcom/mopub/nativeads/NativeVideoViewController;Z)Z

    .line 103
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$1;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # getter for: Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$100(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeFullScreenVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->resetProgress()V

    .line 104
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$1;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # getter for: Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativeads/NativeVideoController;->seekTo(J)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$1;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PLAYING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;)V

    .line 107
    return-void
.end method
