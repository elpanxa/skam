.class Lcom/startapp/android/publish/splash/a$2;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/splash/a;->a(Lcom/startapp/android/publish/StartAppAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/splash/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/splash/a;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/startapp/android/publish/splash/a$2;->a:Lcom/startapp/android/publish/splash/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 185
    invoke-static {p1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object v0, p0, Lcom/startapp/android/publish/splash/a$2;->a:Lcom/startapp/android/publish/splash/a;

    invoke-static {v0}, Lcom/startapp/android/publish/splash/a;->c(Lcom/startapp/android/publish/splash/a;)V

    .line 188
    return-void
.end method
