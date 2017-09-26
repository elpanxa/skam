.class Lcom/revmob/ads/fullscreen/FullscreenActivity$2;
.super Ljava/lang/Object;
.source "FullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$2;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$2;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->initVideo()V

    .line 299
    return-void
.end method
