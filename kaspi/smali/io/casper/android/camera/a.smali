.class public Lio/casper/android/camera/a;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/camera/a$a;,
        Lio/casper/android/camera/a$b;,
        Lio/casper/android/camera/a$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraPreview"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraID:I

.field private mCameraInPreview:Z

.field private mCameraRotation:I

.field private mCameraSurfaceTexture:Lio/casper/android/camera/b;

.field private mContext:Landroid/content/Context;

.field private mDist:F

.field private mFlashCallback:Lio/casper/android/camera/a$a;

.field private mFlashMode:Ljava/lang/String;

.field private mFlashModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOutputFile:Ljava/io/File;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mRecording:Z

.field private mRecordingCallback:Lio/casper/android/camera/a$c;

.field private mTimeElapsed:I

.field private mTimeHandler:Landroid/os/Handler;

.field private mTimeRunnable:Ljava/lang/Runnable;

.field public sizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v3, p0, Lio/casper/android/camera/a;->mCameraID:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    .line 46
    const-string v0, "off"

    iput-object v0, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    .line 839
    new-instance v0, Lio/casper/android/camera/a$6;

    invoke-direct {v0, p0}, Lio/casper/android/camera/a$6;-><init>(Lio/casper/android/camera/a;)V

    iput-object v0, p0, Lio/casper/android/camera/a;->sizeComparator:Ljava/util/Comparator;

    .line 64
    iput-object p1, p0, Lio/casper/android/camera/a;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/casper/android/camera/a;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/camera/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 69
    iget-object v1, p0, Lio/casper/android/camera/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 70
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/camera/a;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 71
    iget-object v0, p0, Lio/casper/android/camera/a;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/casper/android/camera/a;->mTimeHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 76
    new-instance v0, Lio/casper/android/camera/b;

    iget-object v1, p0, Lio/casper/android/camera/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/camera/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    .line 77
    iget-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    new-instance v1, Lio/casper/android/camera/a$1;

    invoke-direct {v1, p0}, Lio/casper/android/camera/a$1;-><init>(Lio/casper/android/camera/a;)V

    invoke-virtual {v0, v1}, Lio/casper/android/camera/b;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 142
    new-instance v0, Lio/casper/android/camera/a$2;

    invoke-direct {v0, p0}, Lio/casper/android/camera/a$2;-><init>(Lio/casper/android/camera/a;)V

    iput-object v0, p0, Lio/casper/android/camera/a;->mTimeRunnable:Ljava/lang/Runnable;

    .line 153
    iget-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    new-instance v1, Lio/casper/android/camera/a$3;

    invoke-direct {v1, p0}, Lio/casper/android/camera/a$3;-><init>(Lio/casper/android/camera/a;)V

    invoke-virtual {v0, v1}, Lio/casper/android/camera/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    return-void
.end method

.method static synthetic a(Lio/casper/android/camera/a;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lio/casper/android/camera/a;->mDist:F

    return p1
.end method

.method static synthetic a(Lio/casper/android/camera/a;Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lio/casper/android/camera/a;->c(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lio/casper/android/camera/a;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/camera/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 282
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 283
    invoke-direct {p0, p1}, Lio/casper/android/camera/a;->c(Landroid/view/MotionEvent;)F

    move-result v3

    .line 284
    iget v4, p0, Lio/casper/android/camera/a;->mDist:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 286
    if-ge v0, v2, :cond_0

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 293
    :cond_0
    :goto_0
    iput v3, p0, Lio/casper/android/camera/a;->mDist:F

    .line 294
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 295
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 296
    return-void

    .line 288
    :cond_1
    iget v2, p0, Lio/casper/android/camera/a;->mDist:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    .line 290
    if-lez v0, :cond_0

    .line 291
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lio/casper/android/camera/a;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lio/casper/android/camera/a;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 301
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 302
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic c(Lio/casper/android/camera/a;)Lio/casper/android/camera/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/camera/a;)Lio/casper/android/camera/a$c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/camera/a;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lio/casper/android/camera/a;->mTimeElapsed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/casper/android/camera/a;->mTimeElapsed:I

    return v0
.end method

.method static synthetic f(Lio/casper/android/camera/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lio/casper/android/camera/a;->mTimeElapsed:I

    return v0
.end method

.method static synthetic g(Lio/casper/android/camera/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/camera/a;->mTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/camera/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/camera/a;->mTimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/camera/a;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/casper/android/camera/a;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 481
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 483
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 485
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    return v0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lio/casper/android/camera/a;->e()V

    .line 209
    iput p1, p0, Lio/casper/android/camera/a;->mCameraID:I

    .line 213
    :try_start_0
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    .line 215
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    iget-object v1, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/camera/a;->a(ILandroid/hardware/Camera;)V

    .line 217
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/camera/a;->m()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 226
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 228
    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    const-string v3, "off"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    const-string v2, "on"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    const-string v3, "on"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    const-string v2, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    const-string v2, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_3
    invoke-virtual {p0}, Lio/casper/android/camera/a;->o()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 241
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 242
    iget-object v1, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_4
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    iget-object v1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    if-eqz v1, :cond_4

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    iget-object v1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    invoke-interface {v1, v0}, Lio/casper/android/camera/a$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(ILandroid/hardware/Camera;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 724
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 725
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 727
    iget-object v0, p0, Lio/casper/android/camera/a;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 728
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 731
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 747
    :goto_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 748
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 749
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 754
    :goto_1
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 755
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 756
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 757
    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 759
    iput v0, p0, Lio/casper/android/camera/a;->mCameraRotation:I

    .line 761
    return-void

    :pswitch_0
    move v0, v1

    .line 734
    goto :goto_0

    .line 736
    :pswitch_1
    const/16 v0, 0x5a

    .line 737
    goto :goto_0

    .line 739
    :pswitch_2
    const/16 v0, 0xb4

    .line 740
    goto :goto_0

    .line 742
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 751
    :cond_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lio/casper/android/camera/a;->b()V

    .line 257
    return-void
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public a(Lio/casper/android/camera/a$a;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lio/casper/android/camera/a;->mFlashCallback:Lio/casper/android/camera/a$a;

    .line 200
    return-void
.end method

.method public a(Lio/casper/android/camera/a$c;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    .line 196
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lio/casper/android/camera/a;->mOutputFile:Ljava/io/File;

    .line 204
    return-void
.end method

.method public a(Ljava/io/File;Lio/casper/android/camera/a$b;)V
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Lio/casper/android/camera/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lio/casper/android/camera/a;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 560
    invoke-virtual {p0}, Lio/casper/android/camera/a;->e()V

    .line 564
    :try_start_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    invoke-virtual {v0}, Lio/casper/android/camera/b;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 566
    new-instance v1, Lio/casper/android/o/b;

    const/4 v2, 0x1

    new-instance v3, Lio/casper/android/camera/a$5;

    invoke-direct {v3, p0, p2, p1}, Lio/casper/android/camera/a$5;-><init>(Lio/casper/android/camera/a;Lio/casper/android/camera/a$b;Ljava/io/File;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lio/casper/android/o/b;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;ZLio/casper/android/o/b$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 580
    invoke-virtual {v1, v0}, Lio/casper/android/o/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 584
    const-string v1, "CameraPreview"

    const-string v2, "Grabbing Camera Frame from SurfaceTexture failed"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    invoke-interface {p2, v0}, Lio/casper/android/camera/a$b;->a(Ljava/lang/Throwable;)V

    .line 587
    iget-object v0, p0, Lio/casper/android/camera/a;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 489
    iput-object p1, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    .line 492
    :try_start_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mFlashCallback:Lio/casper/android/camera/a$a;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lio/casper/android/camera/a;->mFlashCallback:Lio/casper/android/camera/a$a;

    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/casper/android/camera/a$a;->a(Ljava/lang/String;)V

    .line 506
    :cond_1
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    iget-object v1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    invoke-interface {v1, v0}, Lio/casper/android/camera/a$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 311
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 317
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lio/casper/android/camera/a;->e()V

    .line 328
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    .line 331
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 336
    :try_start_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    invoke-virtual {v1}, Lio/casper/android/camera/b;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 337
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/camera/a;->mCameraInPreview:Z

    .line 340
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 341
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v1

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 342
    const-string v0, "AspectRatio"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lio/casper/android/camera/a;->mCameraSurfaceTexture:Lio/casper/android/camera/b;

    invoke-virtual {v0}, Lio/casper/android/camera/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/AspectFrameLayout;

    invoke-virtual {v0, v2, v3}, Lio/casper/android/ui/AspectFrameLayout;->setAspectRatio(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 352
    iget-boolean v0, p0, Lio/casper/android/camera/a;->mCameraInPreview:Z

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/camera/a;->mCameraInPreview:Z

    .line 354
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 357
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    invoke-interface {v0, v1}, Lio/casper/android/camera/a$c;->a(I)V

    .line 365
    :cond_0
    iput-boolean v1, p0, Lio/casper/android/camera/a;->mCameraInPreview:Z

    .line 366
    iput v1, p0, Lio/casper/android/camera/a;->mTimeElapsed:I

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/camera/a;->p()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lio/casper/android/camera/a;->n()Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 373
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 374
    iget v3, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 375
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .line 377
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 378
    iget-object v3, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 380
    iget-object v3, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 390
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 392
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 393
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 395
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 396
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 397
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 400
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 401
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 402
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 403
    iget-object v2, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 404
    iget-object v1, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 406
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 407
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v2, 0x44aa20

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 409
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lio/casper/android/camera/a;->mOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lio/casper/android/camera/a$4;

    invoke-direct {v1, p0}, Lio/casper/android/camera/a$4;-><init>(Lio/casper/android/camera/a;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 424
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 425
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/camera/a;->mRecording:Z

    .line 429
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    invoke-interface {v0}, Lio/casper/android/camera/a$c;->a()V

    .line 433
    :cond_1
    iget-object v0, p0, Lio/casper/android/camera/a;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/casper/android/camera/a;->mTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_2
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    iget-object v1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    invoke-interface {v1, v0}, Lio/casper/android/camera/a$c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lio/casper/android/camera/a;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/casper/android/camera/a;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iput v2, p0, Lio/casper/android/camera/a;->mTimeElapsed:I

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lio/casper/android/camera/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lio/casper/android/camera/a;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lio/casper/android/camera/a;->q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    :goto_1
    iput-boolean v2, p0, Lio/casper/android/camera/a;->mRecording:Z

    .line 464
    invoke-virtual {p0}, Lio/casper/android/camera/a;->d()V

    .line 466
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 458
    :catch_1
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lio/casper/android/camera/a;->g()V

    .line 471
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    invoke-interface {v0}, Lio/casper/android/camera/a$c;->b()V

    .line 473
    iget-object v0, p0, Lio/casper/android/camera/a;->mRecordingCallback:Lio/casper/android/camera/a$c;

    iget-object v1, p0, Lio/casper/android/camera/a;->mOutputFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lio/casper/android/camera/a$c;->a(Ljava/io/File;)V

    .line 476
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 514
    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 515
    add-int/lit8 v0, v0, 0x1

    .line 516
    iget-object v1, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    .line 521
    :goto_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/casper/android/camera/a;->a(Ljava/lang/String;)V

    .line 526
    :goto_1
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lio/casper/android/camera/a;->mFlashModes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lio/casper/android/camera/a;->mFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lio/casper/android/camera/a;->mRecording:Z

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lio/casper/android/camera/a;->g()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/camera/a;->c()V

    .line 540
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    if-nez v0, :cond_1

    .line 541
    const/4 v0, 0x1

    iput v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    .line 546
    :goto_0
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-virtual {p0, v0}, Lio/casper/android/camera/a;->a(I)V

    .line 547
    invoke-virtual {p0}, Lio/casper/android/camera/a;->d()V

    .line 549
    return-void

    .line 543
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lio/casper/android/camera/a;->mRecording:Z

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 679
    iget v1, p0, Lio/casper/android/camera/a;->mCameraID:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Landroid/media/CamcorderProfile;
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 701
    .line 702
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 704
    const-string v1, "video quality"

    const-string v2, "QUALITY_720P"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    const v1, 0x16e360

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 718
    return-object v0

    .line 706
    :cond_0
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 708
    const-string v1, "video quality"

    const-string v2, "QUALITY_480P"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_1
    iget v0, p0, Lio/casper/android/camera/a;->mCameraID:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 712
    const-string v1, "video quality"

    const-string v2, "QUALITY_HIGH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public o()Landroid/hardware/Camera$Size;
    .locals 6

    .prologue
    .line 765
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 768
    if-nez v0, :cond_3

    .line 769
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 772
    :goto_0
    iget-object v0, p0, Lio/casper/android/camera/a;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 774
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 775
    const-string v3, "Camera Size:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 778
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 779
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0x500

    if-gt v2, v3, :cond_1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x2d0

    if-gt v2, v3, :cond_1

    .line 780
    const-string v1, "Chosen Picture Size:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public p()Landroid/hardware/Camera$Size;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 813
    const/16 v4, 0x500

    .line 814
    const/16 v5, 0x2d0

    .line 816
    iget-object v0, p0, Lio/casper/android/camera/a;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 818
    const/4 v3, 0x0

    .line 822
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 823
    const-string v7, "CameraPreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SupportedVideoSize(W, H) -> ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 825
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 827
    if-gt v7, v4, :cond_1

    if-gt v8, v5, :cond_1

    .line 828
    if-lt v7, v2, :cond_1

    if-lt v8, v1, :cond_1

    .line 829
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 830
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    move v10, v1

    move v1, v2

    move-object v2, v0

    move v0, v10

    :goto_1
    move-object v3, v2

    move v2, v1

    move v1, v0

    .line 834
    goto :goto_0

    .line 836
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_1
.end method
