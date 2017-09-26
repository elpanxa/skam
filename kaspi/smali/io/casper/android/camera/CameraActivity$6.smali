.class Lio/casper/android/camera/CameraActivity$6;
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
    .line 204
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$6;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$6;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$6;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->i()V

    .line 212
    :cond_0
    return-void
.end method
