.class Lcom/revmob/ads/popup/RevMobPopup$1;
.super Ljava/lang/Object;
.source "RevMobPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/popup/RevMobPopup;->show()V
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
    .line 85
    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup$1;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup$1;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    # invokes: Lcom/revmob/ads/popup/RevMobPopup;->buildAndDisplayDialog()V
    invoke-static {v0}, Lcom/revmob/ads/popup/RevMobPopup;->access$000(Lcom/revmob/ads/popup/RevMobPopup;)V

    .line 89
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup$1;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    # invokes: Lcom/revmob/ads/popup/RevMobPopup;->playSoundOnShow()V
    invoke-static {v0}, Lcom/revmob/ads/popup/RevMobPopup;->access$100(Lcom/revmob/ads/popup/RevMobPopup;)V

    .line 90
    return-void
.end method
