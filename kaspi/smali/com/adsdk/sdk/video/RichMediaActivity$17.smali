.class Lcom/adsdk/sdk/video/RichMediaActivity$17;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;->createLocalAdListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # invokes: Lcom/adsdk/sdk/video/RichMediaActivity;->notifyAdClicked()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    .line 595
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method
