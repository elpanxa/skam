.class public Lcom/supersonicads/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"

# interfaces
.implements Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;
.implements Lcom/supersonicads/sdk/controller/VideoEventsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/controller/ControllerActivity$4;,
        Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WEB_VIEW_VIEW_ID:I = 0x1


# instance fields
.field final MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field public applicationRotation:I

.field private calledFromOnCreate:Z

.field public currentRequestedRotation:I

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mOrientation:I

.field private mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

.field public mOrientationType:I

.field private mProductType:Ljava/lang/String;

.field private mState:Lcom/supersonicads/sdk/data/AdUnitsState;

.field private mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field private mWebViewFrameContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    iput v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationType:I

    .line 56
    iput v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->applicationRotation:I

    .line 57
    iput v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    .line 435
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/supersonicads/sdk/controller/ControllerActivity;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    return p1
.end method

.method private cancelScreenOn()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$2;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$2;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method private handleOrientationState(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 148
    if-eqz p1, :cond_0

    .line 150
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setInitiateLandscapeOrientation()V

    .line 155
    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setOrientationEventListener(I)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setInitiatePortraitOrientation()V

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setOrientationEventListener(I)V

    goto :goto_0

    .line 164
    :cond_2
    const-string v0, "application"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-direct {p0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setOrientationEventListener(I)V

    goto :goto_0

    .line 167
    :cond_3
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->isDeviceOrientationLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {p0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 175
    :cond_4
    invoke-direct {p0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setOrientationEventListener(I)V

    goto :goto_0
.end method

.method private hideActivityTitle()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->requestWindowFeature(I)Z

    .line 313
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 316
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 318
    return-void
.end method

.method private initOrientationManager()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    .line 133
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 135
    const-string v1, "orientation_set_flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "rotation_set_flag"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    invoke-direct {p0, v1, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method private isDeviceOrientationLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 352
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$1;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method private removeWebViewContainerView()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    :cond_0
    return-void
.end method

.method private setInitiateLandscapeOrientation()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 358
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 361
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_0"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iput v3, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 366
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 382
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 368
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iput v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 370
    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 371
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 372
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_270 Right Landscape"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 374
    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 376
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_90 Left Landscape"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iput v3, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 378
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 380
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setInitiatePortraitOrientation()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    .line 386
    invoke-static {p0}, Lcom/supersonicads/sdk/utils/SDKUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 388
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-nez v0, :cond_0

    .line 391
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_0"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iput v3, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 393
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 409
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 395
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iput v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 397
    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 398
    :cond_1
    if-ne v0, v3, :cond_2

    .line 399
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_270 Right Landscape"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iput v3, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 401
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 402
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 403
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_90 Left Landscape"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput v3, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 405
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 407
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOrientationEventListener(I)V
    .locals 3

    .prologue
    .line 622
    iput p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationType:I

    .line 623
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationEventListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method private setRotation(I)V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 413
    if-nez p1, :cond_0

    .line 414
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_0"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iput v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 416
    invoke-virtual {p0, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 432
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 418
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_180"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iput v5, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 420
    invoke-virtual {p0, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 421
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 422
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_270 Right Landscape"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iput v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 424
    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 425
    :cond_2
    if-ne p1, v2, :cond_3

    .line 426
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "ROTATION_90 Left Landscape"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iput v3, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientation:I

    .line 428
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 430
    :cond_3
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "No Rotation"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getBackButtonState()Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity$4;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$BackButtonState:[I

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 286
    :pswitch_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->nativeNavigationPressed(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->hideActivityTitle()V

    .line 74
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->hideActivtiyStatusBar()V

    .line 78
    invoke-static {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 80
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setId(I)V

    .line 83
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOnWebViewControllerChangeListener(Lcom/supersonicads/sdk/controller/SupersonicWebView$OnWebViewControllerChangeListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 87
    const-string v1, "productType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 95
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->finish()V

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->BrandConnect:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVideoEventsListener(Lcom/supersonicads/sdk/controller/VideoEventsListener;)V

    .line 109
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    .line 116
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    .line 121
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->finish()V

    .line 125
    :cond_3
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->initOrientationManager()V

    .line 127
    return-void

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSavedState()Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 253
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->removeVideoEventsListener()V

    .line 256
    :cond_1
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 629
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$3;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->inCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->hideCustomView()V

    .line 649
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 227
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->pause()V

    .line 230
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 235
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->disable()V

    .line 239
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 205
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->resume()V

    .line 206
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mOrientationManager:Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/ControllerActivity$OrientationManager;->enable()V

    .line 213
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 217
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 191
    const-string v0, "state"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onSetOrientationCalled(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 642
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 308
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 686
    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 674
    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 680
    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 668
    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 692
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    .prologue
    .line 657
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_0

    .line 658
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation: Req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iput p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 660
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 662
    :cond_0
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .locals 0

    .prologue
    .line 696
    if-eqz p1, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->keepScreenOn()V

    .line 705
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->cancelScreenOn()V

    goto :goto_0
.end method
