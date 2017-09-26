.class Lcom/revmob/ads/fullscreen/FullscreenActivity$5;
.super Lcom/revmob/internal/RevMobWebViewClient;
.source "FullscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenActivity;->createViewClickUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$5;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {p0, p2, p3}, Lcom/revmob/internal/RevMobWebViewClient;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/RevMobWebViewClient$RevMobWebViewClickListener;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity$5;->this$0:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->removeProgressBar()V

    .line 907
    return-void
.end method
