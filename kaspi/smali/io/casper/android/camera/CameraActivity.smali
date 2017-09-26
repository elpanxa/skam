.class public Lio/casper/android/camera/CameraActivity;
.super Lio/casper/android/activity/a/a;
.source "CameraActivity.java"


# instance fields
.field private mBackFlashButton:Landroid/widget/ImageView;

.field private mCameraFrame:Lio/casper/android/ui/AspectFrameLayout;

.field private mCameraPreview:Lio/casper/android/camera/a;

.field private mCaptureImageButton:Landroid/widget/ImageView;

.field private mCaptureVideoButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mFrontFlashButton:Landroid/widget/ImageView;

.field private mFrontFlashEnabled:Z

.field private mFrontFlashFrame:Landroid/widget/FrameLayout;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mRecordingView:Landroid/widget/LinearLayout;

.field private mSwitchCameraButton:Landroid/widget/ImageView;

.field private mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/camera/CameraActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mRecordingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCaptureVideoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lio/casper/android/camera/CameraActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/camera/CameraActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mBackFlashButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/l/k;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    return-object v0
.end method

.method static synthetic h(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lio/casper/android/camera/CameraActivity;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashEnabled:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v0}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    new-instance v2, Lio/casper/android/camera/CameraActivity$8;

    invoke-direct {v2, p0}, Lio/casper/android/camera/CameraActivity$8;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v1, v0, v2}, Lio/casper/android/camera/a;->a(Ljava/io/File;Lio/casper/android/camera/a$b;)V

    .line 257
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 225
    iput-boolean p1, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashEnabled:Z

    .line 226
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200d1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashFrame:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 228
    return-void

    .line 226
    :cond_0
    const v0, 0x7f0200d0

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->setContentView(I)V

    .line 80
    iput-object p0, p0, Lio/casper/android/camera/CameraActivity;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 84
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mTimeText:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCaptureImageButton:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCaptureVideoButton:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0c0091

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mSwitchCameraButton:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0c0093

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mBackFlashButton:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashButton:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/AspectFrameLayout;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraFrame:Lio/casper/android/ui/AspectFrameLayout;

    .line 91
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mRecordingView:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lio/casper/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashFrame:Landroid/widget/FrameLayout;

    .line 94
    new-instance v0, Lio/casper/android/camera/a;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/camera/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    .line 95
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mCameraFrame:Lio/casper/android/ui/AspectFrameLayout;

    invoke-virtual {v0, v1}, Lio/casper/android/camera/a;->a(Landroid/widget/FrameLayout;)V

    .line 97
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    invoke-virtual {v1}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/camera/a;->a(Ljava/io/File;)V

    .line 99
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    new-instance v1, Lio/casper/android/camera/CameraActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$1;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a$c;)V

    .line 132
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    new-instance v1, Lio/casper/android/camera/CameraActivity$2;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$2;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Lio/casper/android/camera/a;->a(Lio/casper/android/camera/a$a;)V

    .line 165
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCaptureVideoButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/camera/CameraActivity$3;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$3;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCaptureImageButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/camera/CameraActivity$4;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$4;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mSwitchCameraButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/camera/CameraActivity$5;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$5;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mBackFlashButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/camera/CameraActivity$6;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$6;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mFrontFlashButton:Landroid/widget/ImageView;

    new-instance v1, Lio/casper/android/camera/CameraActivity$7;

    invoke-direct {v1, p0}, Lio/casper/android/camera/CameraActivity$7;-><init>(Lio/casper/android/camera/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onDestroy()V

    .line 68
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->c()V

    .line 72
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 262
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 265
    invoke-virtual {p0}, Lio/casper/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 269
    :cond_2
    invoke-super {p0, p1, p2}, Lio/casper/android/activity/a/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 276
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lio/casper/android/camera/CameraActivity;->a()V

    .line 278
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lio/casper/android/activity/a/a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onPause()V

    .line 57
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    invoke-virtual {v0}, Lio/casper/android/camera/a;->e()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lio/casper/android/activity/a/a;->onResume()V

    .line 46
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity;->mCameraPreview:Lio/casper/android/camera/a;

    invoke-virtual {v1}, Lio/casper/android/camera/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/casper/android/camera/a;->a(I)V

    .line 50
    :cond_0
    return-void
.end method
