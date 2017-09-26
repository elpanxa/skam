.class Lcom/revmob/ads/popup/RevMobPopup$3$1;
.super Ljava/lang/Object;
.source "RevMobPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/popup/RevMobPopup$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/popup/RevMobPopup$3;


# direct methods
.method constructor <init>(Lcom/revmob/ads/popup/RevMobPopup$3;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup$3$1;->this$1:Lcom/revmob/ads/popup/RevMobPopup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/revmob/internal/MarketAsyncManager;

    iget-object v1, p0, Lcom/revmob/ads/popup/RevMobPopup$3$1;->this$1:Lcom/revmob/ads/popup/RevMobPopup$3;

    iget-object v1, v1, Lcom/revmob/ads/popup/RevMobPopup$3;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    # getter for: Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/revmob/ads/popup/RevMobPopup;->access$300(Lcom/revmob/ads/popup/RevMobPopup;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/popup/RevMobPopup$3$1;->this$1:Lcom/revmob/ads/popup/RevMobPopup$3;

    iget-object v2, v2, Lcom/revmob/ads/popup/RevMobPopup$3;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    # getter for: Lcom/revmob/ads/popup/RevMobPopup;->data:Lcom/revmob/ads/popup/client/PopupData;
    invoke-static {v2}, Lcom/revmob/ads/popup/RevMobPopup;->access$400(Lcom/revmob/ads/popup/RevMobPopup;)Lcom/revmob/ads/popup/client/PopupData;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/popup/RevMobPopup$3$1;->this$1:Lcom/revmob/ads/popup/RevMobPopup$3;

    iget-object v3, v3, Lcom/revmob/ads/popup/RevMobPopup$3;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    # getter for: Lcom/revmob/ads/popup/RevMobPopup;->publisherListener:Lcom/revmob/RevMobAdsListener;
    invoke-static {v3}, Lcom/revmob/ads/popup/RevMobPopup;->access$500(Lcom/revmob/ads/popup/RevMobPopup;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/revmob/internal/MarketAsyncManager;-><init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;)V

    .line 117
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/MarketAsyncManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method
