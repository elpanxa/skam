.class Lcom/mopub/nativeads/NativeVideoViewController$3;
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
    .line 118
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # getter for: Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 122
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # getter for: Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;
    invoke-static {v1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$100(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeFullScreenVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/mopub/nativeads/NativeVideoViewController;->mCachedVideoFrame:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeVideoViewController;->access$402(Lcom/mopub/nativeads/NativeVideoViewController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 123
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # getter for: Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object v1

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController$3;->this$0:Lcom/mopub/nativeads/NativeVideoViewController;

    # invokes: Lcom/mopub/nativeads/NativeVideoViewController;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/mopub/nativeads/NativeVideoViewController;->access$500(Lcom/mopub/nativeads/NativeVideoViewController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeVideoController;->handleCtaClick(Landroid/content/Context;)V

    .line 124
    return-void
.end method
