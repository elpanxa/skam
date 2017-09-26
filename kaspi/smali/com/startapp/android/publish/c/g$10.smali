.class Lcom/startapp/android/publish/c/g$10;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/c/g;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    iput-object p2, p0, Lcom/startapp/android/publish/c/g$10;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/c/g;I)V

    .line 238
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->h(Lcom/startapp/android/publish/c/g;)I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-virtual {v1}, Lcom/startapp/android/publish/c/g;->g()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/video/e;

    iget-object v3, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-virtual {v3}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-static {v4}, Lcom/startapp/android/publish/c/g;->h(Lcom/startapp/android/publish/c/g;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/startapp/android/publish/video/e;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 240
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->b:Lcom/startapp/android/publish/c/g;

    iget-boolean v0, v0, Lcom/startapp/android/publish/c/g;->e:Z

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$10;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
