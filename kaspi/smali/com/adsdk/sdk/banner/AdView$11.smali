.class Lcom/adsdk/sdk/banner/AdView$11;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->createBannerAdViewListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$11;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$11;->this$0:Lcom/adsdk/sdk/banner/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->access$11(Lcom/adsdk/sdk/banner/AdView;Z)V

    .line 488
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$11;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$12(Lcom/adsdk/sdk/banner/AdView;)V

    .line 489
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$11;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyAdShown()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$13(Lcom/adsdk/sdk/banner/AdView;)V

    .line 490
    return-void
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$11;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdSucceeded()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$10(Lcom/adsdk/sdk/banner/AdView;)V

    .line 483
    return-void
.end method
