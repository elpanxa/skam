.class Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MraidDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastRotation:I

.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isRegistered()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 878
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->getDisplayRotation()I
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$3(Lcom/adsdk/sdk/mraid/MraidDisplayController;)I

    move-result v0

    .line 880
    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    if-eq v0, v1, :cond_0

    .line 881
    iput v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    .line 882
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iget v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mLastRotation:I

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->onOrientationChanged(I)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$4(Lcom/adsdk/sdk/mraid/MraidDisplayController;I)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 892
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 894
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 895
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$OrientationBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 900
    return-void
.end method
