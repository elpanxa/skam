.class Lio/casper/android/camera/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lio/casper/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$3;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$3;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$3;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->h()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$3;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->f()V

    goto :goto_0
.end method
