.class Lcom/revmob/ads/banner/RevMobBanner$1;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->onClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$1;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/revmob/ads/banner/RevMobBanner$1$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/RevMobBanner$1$1;-><init>(Lcom/revmob/ads/banner/RevMobBanner$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
