.class Lcom/startapp/android/publish/c/g$9;
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
.field final synthetic a:Lcom/startapp/android/publish/c/g;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/startapp/android/publish/c/g$9;->a:Lcom/startapp/android/publish/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$9;->a:Lcom/startapp/android/publish/c/g;

    invoke-static {v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 221
    iget-object v0, p0, Lcom/startapp/android/publish/c/g$9;->a:Lcom/startapp/android/publish/c/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/c/g;->c(Lcom/startapp/android/publish/c/g;Z)Z

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/c/g$9$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$9$1;-><init>(Lcom/startapp/android/publish/c/g$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method
