.class Lcom/mopub/nativeads/NativeVideoViewController$2;
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
    .line 110
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$2;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$2;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    sget-object v1, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;Z)V

    .line 114
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$2;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # invokes: Lcom/mopub/nativeads/NativeVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$300(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 115
    return-void
.end method
