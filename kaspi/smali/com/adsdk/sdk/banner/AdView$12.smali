.class Lcom/adsdk/sdk/banner/AdView$12;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;

.field private final synthetic val$event:Lcom/adsdk/sdk/customevents/CustomEvent;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/customevents/CustomEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView$12;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 513
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$14(Lcom/adsdk/sdk/banner/AdView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$15(Lcom/adsdk/sdk/banner/AdView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$16(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$17(Lcom/adsdk/sdk/banner/AdView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$18(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    move-result-object v2

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView$12;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v3}, Lcom/adsdk/sdk/customevents/CustomEvent;->getOptionalParameter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView$12;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v4}, Lcom/adsdk/sdk/customevents/CustomEvent;->getPixelUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I
    invoke-static {v5}, Lcom/adsdk/sdk/banner/AdView;->access$15(Lcom/adsdk/sdk/banner/AdView;)I

    move-result v5

    iget-object v6, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I
    invoke-static {v6}, Lcom/adsdk/sdk/banner/AdView;->access$14(Lcom/adsdk/sdk/banner/AdView;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V

    .line 519
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$16(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$17(Lcom/adsdk/sdk/banner/AdView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$12;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$18(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    move-result-object v2

    iget-object v3, p0, Lcom/adsdk/sdk/banner/AdView$12;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v3}, Lcom/adsdk/sdk/customevents/CustomEvent;->getOptionalParameter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adsdk/sdk/banner/AdView$12;->val$event:Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-virtual {v4}, Lcom/adsdk/sdk/customevents/CustomEvent;->getPixelUrl()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12c

    const/16 v6, 0x32

    invoke-virtual/range {v0 .. v6}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method
