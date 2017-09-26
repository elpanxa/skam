.class Lcom/startapp/android/publish/StartAppAd$1;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/StartAppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/StartAppAd;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/StartAppAd;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.startapp.android.ShowFailedDisplayBroadcastListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showFailedReason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "showFailedReason"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdDisplayListener;->adNotDisplayed(Lcom/startapp/android/publish/Ad;)V

    .line 79
    :cond_1
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/StartAppAd$1;->a(Landroid/content/Context;)V

    .line 99
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/StartAppAd;->access$102(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/e;)Lcom/startapp/android/publish/e;

    .line 100
    return-void

    .line 81
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdDisplayListener;->adDisplayed(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.startapp.android.OnClickCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdDisplayListener;->adClicked(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-static {v0}, Lcom/startapp/android/publish/StartAppAd;->access$000(Lcom/startapp/android/publish/StartAppAd;)Lcom/startapp/android/publish/AdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/StartAppAd$1;->a:Lcom/startapp/android/publish/StartAppAd;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdDisplayListener;->adHidden(Lcom/startapp/android/publish/Ad;)V

    .line 97
    :cond_6
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/StartAppAd$1;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
