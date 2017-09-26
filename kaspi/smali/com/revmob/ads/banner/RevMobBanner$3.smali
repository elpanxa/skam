.class Lcom/revmob/ads/banner/RevMobBanner$3;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/RevMobBanner;->updateWithData(Lcom/revmob/client/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/RevMobBanner;

.field final synthetic val$parent:Landroid/view/ViewParent;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    iput-object p2, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->val$parent:Landroid/view/ViewParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;
    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$000(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/internal/AdState;

    move-result-object v0

    sget-object v1, Lcom/revmob/ads/internal/AdState;->HIDDEN:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->val$parent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    # setter for: Lcom/revmob/ads/banner/RevMobBanner;->state:Lcom/revmob/ads/internal/AdState;
    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$002(Lcom/revmob/ads/banner/RevMobBanner;Lcom/revmob/ads/internal/AdState;)Lcom/revmob/ads/internal/AdState;

    .line 176
    iget-object v0, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    iget-object v1, p0, Lcom/revmob/ads/banner/RevMobBanner$3;->this$0:Lcom/revmob/ads/banner/RevMobBanner;

    # getter for: Lcom/revmob/ads/banner/RevMobBanner;->placementId:Ljava/lang/String;
    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$400(Lcom/revmob/ads/banner/RevMobBanner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->load(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method
