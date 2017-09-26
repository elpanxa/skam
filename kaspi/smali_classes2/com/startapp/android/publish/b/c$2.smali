.class Lcom/startapp/android/publish/b/c$2;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/b/c;->c()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/b/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/b/c;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/startapp/android/publish/b/c$2;->a:Lcom/startapp/android/publish/b/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "adHashcode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/startapp/android/publish/b/c$2;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->d(Lcom/startapp/android/publish/b/c;)Lcom/startapp/android/publish/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/startapp/android/publish/b/c$2;->a:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->d(Lcom/startapp/android/publish/b/c;)Lcom/startapp/android/publish/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-ne v2, v0, :cond_1

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "adResult"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$2;->a:Lcom/startapp/android/publish/b/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/b/c;->a()V

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 190
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0
.end method
