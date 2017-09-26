.class Lcom/supersonicads/sdk/controller/SupersonicWebView$6;
.super Landroid/content/BroadcastReceiver;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3390
    .line 3393
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3398
    if-eqz v1, :cond_2

    .line 3399
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 3401
    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3403
    if-eqz v0, :cond_0

    .line 3404
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 3406
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    # getter for: Lcom/supersonicads/sdk/controller/SupersonicWebView;->mControllerState:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;
    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1600(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    move-result-object v0

    sget-object v3, Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/supersonicads/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v3, :cond_1

    .line 3407
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$6;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->deviceStatusChanged(ZZ)V

    .line 3409
    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method
