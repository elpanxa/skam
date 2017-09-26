.class Lio/casper/android/camera/a$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    .line 77
    iput-object p1, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    iget-object v1, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->b(Lio/casper/android/camera/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/casper/android/camera/a;->a(I)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 87
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->c(Lio/casper/android/camera/a;)Lio/casper/android/camera/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/AspectFrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v4, 0x11

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Lio/casper/android/ui/AspectFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object v1, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->d(Lio/casper/android/camera/a;)Lio/casper/android/camera/a$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v1}, Lio/casper/android/camera/a;->d(Lio/casper/android/camera/a;)Lio/casper/android/camera/a$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/casper/android/camera/a$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->d()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->g()V

    .line 132
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->c()V

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->c(Lio/casper/android/camera/a;)Lio/casper/android/camera/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/AspectFrameLayout;

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lio/casper/android/ui/AspectFrameLayout;->setAspectRatio(D)V

    .line 109
    iget-object v0, p0, Lio/casper/android/camera/a$1;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->c(Lio/casper/android/camera/a;)Lio/casper/android/camera/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 127
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
