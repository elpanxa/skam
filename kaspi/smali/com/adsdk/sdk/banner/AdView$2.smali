.class Lcom/adsdk/sdk/banner/AdView$2;
.super Landroid/content/BroadcastReceiver;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/banner/AdView;->registerScreenStateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    .line 246
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-boolean v0, v0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "ADSDK"

    const-string v1, "Screen sleep with ad in foreground, disable refresh"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string v0, "ADSDK"

    const-string v1, "Screen sleep but ad in background; refresh should already be disabled"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-boolean v0, v0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$2;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    .line 259
    const-string v0, "ADSDK"

    const-string v1, "Screen wake / ad in foreground, reset refresh"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_3
    const-string v0, "ADSDK"

    const-string v1, "Screen wake but ad in background; don\'t enable refresh"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
