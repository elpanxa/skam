.class Lcom/revmob/ads/fullscreen/FullscreenActivity$6;
.super Ljava/lang/Object;
.source "FullscreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenActivity;->addCloseButton()V
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
    .line 915
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$6;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$6;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$6;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$6;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    .line 922
    return-void
.end method
