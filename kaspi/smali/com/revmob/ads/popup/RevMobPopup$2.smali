.class Lcom/revmob/ads/popup/RevMobPopup$2;
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
    .line 122
    iput-object p1, p0, Lcom/revmob/ads/popup/RevMobPopup$2;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/revmob/ads/popup/RevMobPopup$2;->this$0:Lcom/revmob/ads/popup/RevMobPopup;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    # setter for: Lcom/revmob/ads/popup/RevMobPopup;->state:Lcom/revmob/ads/internal/AdState;
    invoke-static {v0, v1}, Lcom/revmob/ads/popup/RevMobPopup;->access$202(Lcom/revmob/ads/popup/RevMobPopup;Lcom/revmob/ads/internal/AdState;)Lcom/revmob/ads/internal/AdState;

    .line 127
    return-void
.end method
