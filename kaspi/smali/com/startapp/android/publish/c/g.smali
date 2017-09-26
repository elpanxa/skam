.class public Lcom/startapp/android/publish/c/g;
.super Lcom/startapp/android/publish/c/c;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/c/g$a;
    }
.end annotation


# instance fields
.field protected e:Z

.field private f:Landroid/widget/VideoView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/media/MediaPlayer;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/Handler;

.field private u:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/c;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->j:Z

    .line 66
    iput v0, p0, Lcom/startapp/android/publish/c/g;->k:I

    .line 67
    iput v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    .line 69
    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->n:Z

    .line 70
    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->o:Z

    .line 71
    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->p:Z

    .line 72
    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->e:Z

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/c/g;->q:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/c/g;->r:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/c/g;->s:Landroid/os/Handler;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/c/g;->t:Landroid/os/Handler;

    return-void
.end method

.method private A()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/android/publish/c/g;->u:J

    sub-long v2, v0, v2

    .line 260
    const-wide/16 v0, 0x0

    .line 261
    iget v4, p0, Lcom/startapp/android/publish/c/g;->l:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/startapp/android/publish/c/g;->k:I

    if-nez v4, :cond_0

    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    .line 262
    sub-long v0, v6, v2

    .line 263
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 265
    :cond_0
    return-wide v0
.end method

.method private B()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method private C()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 284
    const-string v0, "videoApi.setMode"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/startapp/android/publish/c/g$a;->b:Lcom/startapp/android/publish/c/g$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const-string v0, "videoApi.setCloseable"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method private D()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 289
    const-string v1, "videoApi.setMode"

    new-array v2, v0, [Ljava/lang/Object;

    sget-object v3, Lcom/startapp/android/publish/c/g$a;->a:Lcom/startapp/android/publish/c/g$a;

    invoke-virtual {v3}, Lcom/startapp/android/publish/c/g$a;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    const-string v1, "videoApi.setCloseable"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/video/VideoAdDetails;->isCloseable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    const-string v1, "videoApi.setSkippable"

    new-array v2, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/startapp/android/publish/c/g;->k:I

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->isSkippable()Z

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method private E()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    const-string v0, "videoApi.setVideoDuration"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->H()I

    .line 297
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->J()V

    .line 298
    const-string v0, "videoApi.setVideoCurrentPosition"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/startapp/android/publish/c/g;->l:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method private F()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 302
    const-string v0, "videoApi.setVideoCurrentPosition"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const-string v0, "videoApi.setSkipTimer"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->t:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/c/g$11;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$11;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method private H()I
    .locals 5

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->K()I

    move-result v1

    .line 328
    div-int/lit16 v0, v1, 0x3e8

    .line 329
    if-lez v0, :cond_0

    rem-int/lit16 v2, v1, 0x3e8

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 330
    add-int/lit8 v0, v0, -0x1

    .line 332
    :cond_0
    const-string v2, "videoApi.setVideoRemainingTimer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    return v1
.end method

.method private I()V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->J()V

    .line 342
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->t:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/android/publish/c/g$12;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$12;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    return-void
.end method

.method private J()V
    .locals 4

    .prologue
    .line 367
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    add-int/lit8 v0, v0, 0x32

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->b(I)I

    move-result v0

    .line 368
    const-string v1, "videoApi.setSkipTimer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method private K()I
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private L()J
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private M()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    .line 456
    return-void
.end method

.method private N()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    .line 460
    return-void
.end method

.method private O()Z
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 468
    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(II)V

    .line 469
    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(II)V

    .line 470
    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(II)V

    .line 471
    return-void
.end method

.method private Q()Lcom/startapp/android/publish/video/VideoAdDetails;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->t()Lcom/startapp/android/publish/Ad;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/a/j;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/j;->getVideoAdDetails()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    return-object v0
.end method

.method private R()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/startapp/android/publish/c/g$3;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/c/g$3;-><init>(Lcom/startapp/android/publish/c/g;)V

    return-object v0
.end method

.method private S()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/startapp/android/publish/c/g$4;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/c/g$4;-><init>(Lcom/startapp/android/publish/c/g;)V

    return-object v0
.end method

.method private T()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lcom/startapp/android/publish/c/g$5;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/c/g$5;-><init>(Lcom/startapp/android/publish/c/g;)V

    return-object v0
.end method

.method private U()V
    .locals 4

    .prologue
    .line 654
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 656
    :try_start_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->j:Z

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    const-string v1, "videoApi.setSound"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->j:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/startapp/android/publish/video/d$a;->b:Lcom/startapp/android/publish/video/d$a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    return-void

    .line 659
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    goto :goto_0

    .line 663
    :cond_2
    sget-object v0, Lcom/startapp/android/publish/video/d$a;->a:Lcom/startapp/android/publish/video/d$a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/d$a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(I)J
    .locals 2

    .prologue
    .line 380
    rem-int/lit16 v0, p1, 0x3e8

    .line 381
    if-nez v0, :cond_0

    .line 382
    const/16 v0, 0x3e8

    .line 384
    :cond_0
    add-int/lit8 v0, v0, 0x32

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(II)V
    .locals 6

    .prologue
    .line 474
    mul-int v0, p1, p2

    div-int/lit8 v0, v0, 0x64

    .line 476
    iget v1, p0, Lcom/startapp/android/publish/c/g;->l:I

    if-ge v1, v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->s:Landroid/os/Handler;

    new-instance v2, Lcom/startapp/android/publish/c/g$2;

    invoke-direct {v2, p0, p2}, Lcom/startapp/android/publish/c/g$2;-><init>(Lcom/startapp/android/publish/c/g;I)V

    iget v3, p0, Lcom/startapp/android/publish/c/g;->l:I

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 307
    const-string v0, "videoApi.setVideoFrame"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/c/g;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/c/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/c/g;->a(Z)V

    return-void
.end method

.method private a(Lcom/startapp/android/publish/video/a$a;)V
    .locals 5

    .prologue
    .line 667
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    .line 669
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoPausedUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/video/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/c/g;->k:I

    iget v4, p0, Lcom/startapp/android/publish/c/g;->r:I

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/startapp/android/publish/video/a;-><init>(Ljava/lang/String;IILcom/startapp/android/publish/video/a$a;)V

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V

    .line 672
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 501
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 403
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/c/g$13;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/c/g$13;-><init>(Lcom/startapp/android/publish/c/g;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method private a(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->g()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/c/g;->k:I

    sget-object v4, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v4}, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 682
    iget v0, p0, Lcom/startapp/android/publish/c/g;->k:I

    if-lez v0, :cond_0

    .line 683
    invoke-direct {p0, v5}, Lcom/startapp/android/publish/c/g;->a(Z)V

    .line 709
    :goto_0
    return v5

    .line 687
    :cond_0
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    if-nez v0, :cond_1

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.ShowFailedDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    const-string v1, "showFailedReason"

    sget-object v2, Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;->VIDEO_ERROR:Lcom/startapp/android/publish/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 693
    :cond_1
    iput-boolean v5, p0, Lcom/startapp/android/publish/c/g;->e:Z

    .line 695
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/video/f;->b(Landroid/content/Context;)V

    .line 697
    invoke-static {p2}, Lcom/startapp/android/publish/video/f$b;->a(I)Lcom/startapp/android/publish/video/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/f$b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {p3}, Lcom/startapp/android/publish/video/f$a;->a(I)Lcom/startapp/android/publish/video/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/f$a;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoPostRollImpressionUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/startapp/android/publish/d/b$a;->e:Lcom/startapp/android/publish/d/b$a;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/startapp/android/publish/d/d;->a(Landroid/content/Context;Lcom/startapp/android/publish/d/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    if-eqz p1, :cond_2

    .line 705
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 708
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->m()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/g;Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/c/g;->a(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 392
    iget v1, p0, Lcom/startapp/android/publish/c/g;->k:I

    if-lez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoAdDetails;->getSkippableAfter()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, p1

    .line 396
    if-lez v1, :cond_0

    .line 399
    div-int/lit16 v0, v1, 0x3e8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/startapp/android/publish/c/g;I)J
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/c/g;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/startapp/android/publish/c/g;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    return-object v0
.end method

.method private b(Lcom/startapp/android/publish/video/a$a;)V
    .locals 5

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoResumedUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/video/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/startapp/android/publish/c/g;->k:I

    iget v4, p0, Lcom/startapp/android/publish/c/g;->r:I

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/startapp/android/publish/video/a;-><init>(Ljava/lang/String;IILcom/startapp/android/publish/video/a$a;)V

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V

    .line 676
    iget v0, p0, Lcom/startapp/android/publish/c/g;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/c/g;->r:I

    .line 677
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 496
    new-instance v0, Lcom/startapp/android/publish/video/e;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/startapp/android/publish/c/g;->k:I

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/video/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/c/g;->a(Ljava/lang/String;Lcom/startapp/android/publish/video/e;)V

    .line 497
    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/c/g;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/startapp/android/publish/c/g;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/startapp/android/publish/c/g;I)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/c/g;->b(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 5

    .prologue
    .line 487
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoProgressUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/video/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/startapp/android/publish/c/g;->k:I

    invoke-direct {v2, v3, p1, v4}, Lcom/startapp/android/publish/video/b;-><init>(Ljava/lang/String;II)V

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 491
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/startapp/android/publish/c/g;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/startapp/android/publish/c/g;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/startapp/android/publish/c/g;->p:Z

    return p1
.end method

.method private d(I)Landroid/widget/RelativeLayout;
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, -0x1

    .line 605
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x57f00000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/startapp/android/publish/c/g;->h:Landroid/widget/RelativeLayout;

    .line 606
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 607
    const v1, 0x57f00004

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 608
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 610
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v1

    .line 612
    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    .line 613
    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setId(I)V

    .line 615
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 619
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 621
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/startapp/android/publish/c/g;->g:Landroid/widget/RelativeLayout;

    .line 622
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 623
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 625
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 627
    iget-object v4, p0, Lcom/startapp/android/publish/c/g;->g:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->g:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/android/publish/c/g;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adinformation/a;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    return-object v0
.end method

.method static synthetic d(Lcom/startapp/android/publish/c/g;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/startapp/android/publish/c/g;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/startapp/android/publish/c/g;->j:Z

    return p1
.end method

.method static synthetic e(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->x()V

    return-void
.end method

.method static synthetic e(Lcom/startapp/android/publish/c/g;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/startapp/android/publish/c/g;->m:Z

    return p1
.end method

.method static synthetic f(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->z()V

    return-void
.end method

.method static synthetic g(Lcom/startapp/android/publish/c/g;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic h(Lcom/startapp/android/publish/c/g;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/startapp/android/publish/c/g;->k:I

    return v0
.end method

.method static synthetic i(Lcom/startapp/android/publish/c/g;)I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->H()I

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/startapp/android/publish/c/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/startapp/android/publish/c/g;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    return v0
.end method

.method static synthetic l(Lcom/startapp/android/publish/c/g;)Lcom/startapp/android/publish/video/VideoAdDetails;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/startapp/android/publish/c/g;)J
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic n(Lcom/startapp/android/publish/c/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/startapp/android/publish/c/g;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic p(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->C()V

    return-void
.end method

.method static synthetic q(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->M()V

    return-void
.end method

.method static synthetic r(Lcom/startapp/android/publish/c/g;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->j:Z

    return v0
.end method

.method static synthetic s(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->U()V

    return-void
.end method

.method static synthetic t(Lcom/startapp/android/publish/c/g;)I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/startapp/android/publish/c/g;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/startapp/android/publish/c/g;->k:I

    return v0
.end method

.method static synthetic u(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->N()V

    return-void
.end method

.method static synthetic v(Lcom/startapp/android/publish/c/g;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->F()V

    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->p:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->a(Landroid/view/View;)V

    .line 129
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->D()V

    .line 133
    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->d(I)Landroid/widget/RelativeLayout;

    .line 144
    :cond_0
    iput-boolean v2, p0, Lcom/startapp/android/publish/c/g;->o:Z

    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->g:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 149
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/video/VideoAdDetails;->getLocalVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/startapp/android/publish/c/g$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$1;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 162
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getPostRollType()Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;->LAST_FRAME:Lcom/startapp/android/publish/video/VideoAdDetails$PostRollType;

    if-ne v0, v1, :cond_2

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/startapp/android/publish/c/g$6;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$6;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 188
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/startapp/android/publish/c/g$7;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$7;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 195
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    new-instance v1, Lcom/startapp/android/publish/c/g$8;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$8;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/b;->a(Landroid/widget/VideoView;Lcom/startapp/android/publish/h/b$a;)V

    .line 205
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_3
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    iget v1, p0, Lcom/startapp/android/publish/c/g;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 173
    sget-object v0, Lcom/startapp/android/publish/video/a$a;->b:Lcom/startapp/android/publish/video/a$a;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->b(Lcom/startapp/android/publish/video/a$a;)V

    goto :goto_0
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 212
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->E()V

    .line 214
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->f:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 256
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/c/g$9;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/g$9;-><init>(Lcom/startapp/android/publish/c/g;)V

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->A()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    if-nez v0, :cond_1

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 232
    new-instance v1, Lcom/startapp/android/publish/c/g$10;

    invoke-direct {v1, p0, v0}, Lcom/startapp/android/publish/c/g$10;-><init>(Lcom/startapp/android/publish/c/g;Landroid/os/Handler;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->P()V

    .line 250
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->G()V

    .line 251
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->I()V

    .line 252
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->B()V

    .line 254
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->U()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/c;->a(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/c/g;->u:J

    .line 87
    if-eqz p1, :cond_0

    const-string v0, "currentPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "currentPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    .line 89
    const-string v0, "progressImpressionsSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/startapp/android/publish/c/g;->q:Ljava/util/HashMap;

    .line 90
    const-string v0, "isMuted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->j:Z

    .line 93
    const-string v0, "shouldSetBg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->m:Z

    .line 94
    const-string v0, "replayNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/c/g;->k:I

    .line 95
    const-string v0, "pauseNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/c/g;->r:I

    .line 97
    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/c;->a(Landroid/webkit/WebView;)V

    .line 102
    const v0, 0x1ffffff

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 103
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/startapp/android/publish/h/b;->a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method protected a(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 743
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/c;->a(Landroid/widget/RelativeLayout;)V

    .line 745
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/c;->b(Landroid/os/Bundle;)V

    .line 506
    const-string v0, "currentPosition"

    iget v1, p0, Lcom/startapp/android/publish/c/g;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v0, "progressImpressionsSent"

    iget-object v1, p0, Lcom/startapp/android/publish/c/g;->q:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 508
    const-string v0, "isMuted"

    iget-boolean v1, p0, Lcom/startapp/android/publish/c/g;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    const-string v0, "shouldSetBg"

    iget-boolean v1, p0, Lcom/startapp/android/publish/c/g;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    const-string v0, "replayNum"

    iget v1, p0, Lcom/startapp/android/publish/c/g;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string v0, "pauseNum"

    iget v1, p0, Lcom/startapp/android/publish/c/g;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->e:Z

    if-nez v0, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoPostRollClosedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->b(Ljava/lang/String;)V

    .line 721
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/startapp/android/publish/c/c;->m()V

    .line 722
    return-void

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->getVideoClosedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/startapp/android/publish/c/g;->k:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/startapp/android/publish/c/g;->l:I

    if-lez v0, :cond_1

    .line 727
    :cond_0
    invoke-super {p0}, Lcom/startapp/android/publish/c/c;->n()V

    .line 729
    :cond_1
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->Q()Lcom/startapp/android/publish/video/VideoAdDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/video/VideoAdDetails;->isCloseable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    .line 736
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    goto :goto_0
.end method

.method public p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    sget-object v0, Lcom/startapp/android/publish/video/a$a;->b:Lcom/startapp/android/publish/video/a$a;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->a(Lcom/startapp/android/publish/video/a$a;)V

    .line 524
    :cond_0
    iput-object v1, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    .line 525
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->a:Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adinformation/a;->c()V

    .line 534
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->m:Z

    .line 535
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/startapp/android/publish/c/c;->r()V

    .line 137
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->y()V

    .line 138
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 539
    invoke-super {p0}, Lcom/startapp/android/publish/c/c;->s()V

    .line 544
    return-void
.end method

.method protected u()Lcom/startapp/android/publish/JsInterface;
    .locals 9

    .prologue
    .line 553
    new-instance v0, Lcom/startapp/android/publish/VideoJsInterface;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/c/g;->d:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/startapp/android/publish/c/g;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->T()Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->S()Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->R()Ljava/lang/Runnable;

    move-result-object v6

    new-instance v7, Lcom/startapp/android/publish/h/s;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/g;->l()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v0 .. v7}, Lcom/startapp/android/publish/VideoJsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V

    return-object v0
.end method

.method protected v()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method protected w()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/startapp/android/publish/c/c;->w()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/c/g;->n:Z

    .line 111
    iget-boolean v0, p0, Lcom/startapp/android/publish/c/g;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 112
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->x()V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->z()V

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->C()V

    .line 124
    :cond_2
    return-void

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/startapp/android/publish/c/g;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/c/g;->c:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/c/g;->a(Landroid/view/View;)V

    goto :goto_0
.end method
