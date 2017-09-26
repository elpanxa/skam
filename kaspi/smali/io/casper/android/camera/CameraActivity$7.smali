.class Lio/casper/android/camera/CameraActivity$7;
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
    .line 215
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$7;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$7;->this$0:Lio/casper/android/camera/CameraActivity;

    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$7;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->i(Lio/casper/android/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lio/casper/android/camera/CameraActivity;->a(Z)V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
