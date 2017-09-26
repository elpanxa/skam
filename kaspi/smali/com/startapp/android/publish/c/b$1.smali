.class Lcom/startapp/android/publish/c/b$1;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/b;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/b;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/startapp/android/publish/c/b$1;->a:Lcom/startapp/android/publish/c/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/startapp/android/publish/c/b$1;->a:Lcom/startapp/android/publish/c/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/b;->m()V

    .line 34
    return-void
.end method
