.class Lio/casper/android/camera/a$3;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 153
    iput-object p1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 163
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 164
    iget-object v1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    iget-object v2, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-static {v2, p2}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;Landroid/view/MotionEvent;)F

    move-result v2

    invoke-static {v1, v2}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;F)F

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 167
    iget-object v1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1, p2}, Lio/casper/android/camera/a;->b(Lio/casper/android/camera/a;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 170
    :cond_2
    if-ne v1, v0, :cond_0

    .line 171
    iget-object v1, p0, Lio/casper/android/camera/a$3;->this$0:Lio/casper/android/camera/a;

    invoke-virtual {v1, p2}, Lio/casper/android/camera/a;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 179
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
