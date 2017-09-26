.class Lcom/revmob/ads/popup/RevMobPopup$3;
.super Ljava/lang/Object;
.source "RevMobPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/popup/RevMobPopup;->buildAndDisplayDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/popup/RevMobPopup;


# direct methods
.method constructor <init>(Lcom/revmob/ads/popup/RevMobPopup;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup$3;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup$3;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    # getter for: Lcom/revmob/ads/popup/RevMobPopup;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/revmob/ads/popup/RevMobPopup;->access$300(Lcom/revmob/ads/popup/RevMobPopup;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/revmob/ads/popup/RevMobPopup$3$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/popup/RevMobPopup$3$1;-><init>(Lcom/revmob/ads/popup/RevMobPopup$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method
