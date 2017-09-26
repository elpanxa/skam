.class Lio/casper/android/camera/a$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/camera/a;


# direct methods
.method constructor <init>(Lio/casper/android/camera/a;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->e(Lio/casper/android/camera/a;)I

    .line 146
    iget-object v0, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->d(Lio/casper/android/camera/a;)Lio/casper/android/camera/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->d(Lio/casper/android/camera/a;)Lio/casper/android/camera/a$c;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->f(Lio/casper/android/camera/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lio/casper/android/camera/a$c;->a(I)V

    .line 148
    iget-object v0, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->h(Lio/casper/android/camera/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/camera/a$2;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->g(Lio/casper/android/camera/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_0
    return-void
.end method
