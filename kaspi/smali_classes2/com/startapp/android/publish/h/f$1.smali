.class Lcom/startapp/android/publish/h/f$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/h/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/h/f;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/h/f;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/startapp/android/publish/h/f$1;->a:Lcom/startapp/android/publish/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 32
    iget-object v0, p0, Lcom/startapp/android/publish/h/f$1;->a:Lcom/startapp/android/publish/h/f;

    invoke-static {v0}, Lcom/startapp/android/publish/h/f;->a(Lcom/startapp/android/publish/h/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/h/g;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/startapp/android/publish/h/f$1$1;

    invoke-direct {v2, p0, v0}, Lcom/startapp/android/publish/h/f$1$1;-><init>(Lcom/startapp/android/publish/h/f$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method
