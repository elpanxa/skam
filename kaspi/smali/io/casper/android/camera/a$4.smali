.class Lio/casper/android/camera/a$4;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/a;->f()V
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
    .line 411
    iput-object p1, p0, Lio/casper/android/camera/a$4;->this$0:Lio/casper/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    .prologue
    .line 415
    const/16 v0, 0x320

    if-eq p2, v0, :cond_0

    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 416
    :cond_0
    iget-object v0, p0, Lio/casper/android/camera/a$4;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->d(Lio/casper/android/camera/a;)Lio/casper/android/camera/a$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lio/casper/android/camera/a$4;->this$0:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->h()V

    .line 421
    :cond_1
    return-void
.end method
