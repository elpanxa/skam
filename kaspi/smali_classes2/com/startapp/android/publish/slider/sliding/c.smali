.class public Lcom/startapp/android/publish/slider/sliding/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/c$a;
    }
.end annotation


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Lcom/startapp/android/publish/slider/sliding/a;

.field private final r:Lcom/startapp/android/publish/slider/sliding/c$a;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/c$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/c$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/c;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapp/android/publish/slider/sliding/c$a;)V
    .locals 3

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    .line 334
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/c$2;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/slider/sliding/c$2;-><init>(Lcom/startapp/android/publish/slider/sliding/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->w:Ljava/lang/Runnable;

    .line 375
    if-nez p2, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    if-nez p3, :cond_1

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iput-object p2, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    .line 383
    iput-object p3, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    .line 385
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 387
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->o:I

    .line 389
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    .line 390
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->m:F

    .line 391
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->n:F

    .line 392
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/c;->v:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/a;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/startapp/android/publish/slider/sliding/a;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    .line 393
    return-void
.end method

.method private a(FFF)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 668
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 669
    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    move p3, v0

    .line 671
    :cond_0
    :goto_0
    return p3

    .line 670
    :cond_1
    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 671
    goto :goto_0
.end method

.method private a(III)I
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 619
    if-nez p1, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 637
    :goto_0
    return v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 624
    div-int/lit8 v1, v0, 0x2

    .line 625
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 626
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/slider/sliding/c;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 630
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 631
    if-lez v1, :cond_1

    .line 632
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 637
    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 634
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 635
    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    .line 598
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/startapp/android/publish/slider/sliding/c;->b(III)I

    move-result v2

    .line 599
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/startapp/android/publish/slider/sliding/c;->b(III)I

    move-result v3

    .line 600
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 601
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 602
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 603
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 604
    add-int v6, v1, v5

    .line 605
    add-int v7, v0, v4

    .line 607
    if-eqz v2, :cond_0

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    .line 609
    :goto_0
    if-eqz v3, :cond_1

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    .line 612
    :goto_1
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v4, p1}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Lcom/startapp/android/publish/slider/sliding/c;->a(III)I

    move-result v2

    .line 613
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v4, p1}, Lcom/startapp/android/publish/slider/sliding/c$a;->b(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Lcom/startapp/android/publish/slider/sliding/c;->a(III)I

    move-result v3

    .line 615
    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 607
    :cond_0
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 609
    :cond_1
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_1
.end method

.method public static a(Landroid/view/ViewGroup;FLcom/startapp/android/publish/slider/sliding/c$a;)Lcom/startapp/android/publish/slider/sliding/c;
    .locals 3

    .prologue
    .line 361
    invoke-static {p0, p2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/ViewGroup;Lcom/startapp/android/publish/slider/sliding/c$a;)Lcom/startapp/android/publish/slider/sliding/c;

    move-result-object v0

    .line 362
    iget v1, v0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    .line 363
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/startapp/android/publish/slider/sliding/c$a;)Lcom/startapp/android/publish/slider/sliding/c;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/startapp/android/publish/slider/sliding/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/startapp/android/publish/slider/sliding/c$a;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 760
    iput-boolean v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->t:Z

    .line 761
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;FF)V

    .line 762
    iput-boolean v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->t:Z

    .line 764
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v0, v3, :cond_0

    .line 766
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/slider/sliding/c;->c(I)V

    .line 768
    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 3

    .prologue
    .line 829
    invoke-direct {p0, p3}, Lcom/startapp/android/publish/slider/sliding/c;->g(I)V

    .line 830
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 831
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 832
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->f(II)I

    move-result v1

    aput v1, v0, p3

    .line 833
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->k:I

    .line 834
    return-void
.end method

.method private a(FFII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1219
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1220
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1222
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v0

    .line 1228
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v2, p4}, Lcom/startapp/android/publish/slider/sliding/c$a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1229
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 578
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 579
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 580
    sub-int v2, p1, v7

    .line 581
    sub-int v3, p2, v6

    .line 583
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 585
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/slider/sliding/a;->g()V

    .line 586
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/c;->c(I)V

    .line 594
    :goto_0
    return v0

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;IIII)I

    move-result v9

    .line 591
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/startapp/android/publish/slider/sliding/a;->a(IIIII)V

    .line 593
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/c;->c(I)V

    .line 594
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1246
    if-nez p1, :cond_1

    move v1, v2

    .line 1259
    :cond_0
    :goto_0
    return v1

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1250
    :goto_1
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v3, p1}, Lcom/startapp/android/publish/slider/sliding/c$a;->b(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    .line 1252
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1253
    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    iget v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1249
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1250
    goto :goto_2

    .line 1254
    :cond_4
    if-eqz v0, :cond_5

    .line 1255
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1256
    :cond_5
    if-eqz v3, :cond_6

    .line 1257
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1259
    goto :goto_0
.end method

.method private b(F)F
    .locals 4

    .prologue
    .line 675
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 676
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 677
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(III)I
    .locals 1

    .prologue
    .line 651
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 652
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 654
    :cond_0
    :goto_0
    return p3

    .line 653
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 654
    goto :goto_0
.end method

.method private b(FFI)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1198
    const/4 v1, 0x0

    .line 1199
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1202
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    or-int/lit8 v0, v0, 0x4

    .line 1205
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    or-int/lit8 v0, v0, 0x2

    .line 1208
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1209
    or-int/lit8 v0, v0, 0x8

    .line 1212
    :cond_2
    if-eqz v0, :cond_3

    .line 1213
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1214
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v1, v0, p3}, Lcom/startapp/android/publish/slider/sliding/c$a;->b(II)V

    .line 1216
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b(IIII)V
    .locals 6

    .prologue
    .line 1367
    .line 1369
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1370
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1371
    if-eqz p3, :cond_3

    .line 1372
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;II)I

    move-result v2

    .line 1373
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1375
    :goto_0
    if-eqz p4, :cond_2

    .line 1376
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Lcom/startapp/android/publish/slider/sliding/c$a;->b(Landroid/view/View;II)I

    move-result v3

    .line 1377
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1380
    :goto_1
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 1381
    :cond_0
    sub-int v4, v2, v0

    .line 1382
    sub-int v5, v3, v1

    .line 1383
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;IIII)V

    .line 1386
    :cond_1
    return-void

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 837
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 838
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 839
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 840
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 841
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 842
    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    aput v3, v5, v2

    .line 843
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    aput v4, v3, v2

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_0
    return-void
.end method

.method private f(II)I
    .locals 3

    .prologue
    .line 1441
    const/4 v0, 0x0

    .line 1443
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->o:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1445
    :cond_1
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1446
    :cond_2
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->o:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1448
    :cond_3
    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 775
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 776
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 777
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 778
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 779
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 780
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 781
    iput v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->k:I

    goto :goto_0
.end method

.method private f(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    aput v1, v0, p1

    .line 789
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    aput v1, v0, p1

    .line 790
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    aput v1, v0, p1

    .line 791
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    aput v1, v0, p1

    .line 792
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aput v2, v0, p1

    .line 793
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    aput v2, v0, p1

    .line 794
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    aput v2, v0, p1

    .line 795
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->k:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->k:I

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1357
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    invoke-static {v0, v1}, Lcom/startapp/android/publish/slider/sliding/b/j;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->n:F

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->m:F

    invoke-direct {p0, v0, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFF)F

    move-result v0

    .line 1360
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    invoke-static {v1, v2}, Lcom/startapp/android/publish/slider/sliding/b/j;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->n:F

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->m:F

    invoke-direct {p0, v1, v2, v3}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFF)F

    move-result v1

    .line 1363
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(FF)V

    .line 1364
    return-void
.end method

.method private g(I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 799
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 800
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 801
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 802
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 803
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 804
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 805
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 806
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 808
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    if-eqz v7, :cond_1

    .line 809
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    :cond_1
    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    .line 819
    iput-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    .line 820
    iput-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    .line 821
    iput-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    .line 822
    iput-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    .line 823
    iput-object v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->i:[I

    .line 824
    iput-object v6, p0, Lcom/startapp/android/publish/slider/sliding/c;->j:[I

    .line 826
    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    return v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 402
    iput p1, p0, Lcom/startapp/android/publish/slider/sliding/c;->n:F

    .line 403
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 438
    iput p1, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    .line 439
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_0
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    .line 467
    iput p2, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    .line 468
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/c$a;->b(Landroid/view/View;I)V

    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/c;->c(I)V

    .line 470
    return-void
.end method

.method public a(II)Z
    .locals 3

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->t:Z

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    invoke-static {v0, v1}, Lcom/startapp/android/publish/slider/sliding/b/j;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    invoke-static {v1, v2}, Lcom/startapp/android/publish/slider/sliding/b/j;->b(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 940
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 941
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 943
    if-nez v2, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/c;->e()V

    .line 949
    :cond_0
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 950
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    .line 952
    :cond_1
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 954
    packed-switch v2, :pswitch_data_0

    .line 1037
    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v2, v0, :cond_8

    :goto_1
    return v0

    .line 956
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 958
    invoke-static {p1, v1}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 959
    invoke-direct {p0, v2, v3, v4}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFI)V

    .line 961
    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v2

    .line 964
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v3, v6, :cond_3

    .line 965
    invoke-virtual {p0, v2, v4}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    .line 968
    :cond_3
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aget v2, v2, v4

    .line 969
    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 970
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v2, v5

    invoke-virtual {v3, v2, v4}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(II)V

    goto :goto_0

    .line 976
    :pswitch_2
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 977
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 978
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 980
    invoke-direct {p0, v4, v3, v2}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFI)V

    .line 983
    iget v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-nez v5, :cond_4

    .line 984
    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aget v3, v3, v2

    .line 985
    iget v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 986
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v3, v5

    invoke-virtual {v4, v3, v2}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(II)V

    goto :goto_0

    .line 988
    :cond_4
    iget v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v5, v6, :cond_2

    .line 990
    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v3

    .line 991
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    if-ne v3, v4, :cond_2

    .line 992
    invoke-virtual {p0, v3, v2}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    goto :goto_0

    .line 1000
    :pswitch_3
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    .line 1001
    :goto_2
    if-ge v2, v3, :cond_5

    .line 1002
    invoke-static {p1, v2}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1003
    invoke-static {p1, v2}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1004
    invoke-static {p1, v2}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1005
    iget-object v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    aget v7, v7, v4

    sub-float v7, v5, v7

    .line 1006
    iget-object v8, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    aget v8, v8, v4

    sub-float v8, v6, v8

    .line 1008
    invoke-direct {p0, v7, v8, v4}, Lcom/startapp/android/publish/slider/sliding/c;->b(FFI)V

    .line 1009
    iget v9, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v9, v0, :cond_6

    .line 1020
    :cond_5
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/slider/sliding/c;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1014
    :cond_6
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v5

    .line 1015
    if-eqz v5, :cond_7

    invoke-direct {p0, v5, v7, v8}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0, v5, v4}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1001
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1025
    :pswitch_4
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1026
    invoke-direct {p0, v2}, Lcom/startapp/android/publish/slider/sliding/c;->f(I)V

    goto/16 :goto_0

    .line 1032
    :pswitch_5
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/c;->e()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 1037
    goto/16 :goto_1

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    .line 543
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/startapp/android/publish/slider/sliding/c;->a(IIII)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 716
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v0, v8, :cond_4

    .line 717
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->f()Z

    move-result v7

    .line 718
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->b()I

    move-result v2

    .line 719
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->c()I

    move-result v3

    .line 720
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 721
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 723
    if-eqz v4, :cond_0

    .line 724
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 726
    :cond_0
    if-eqz v5, :cond_1

    .line 727
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 730
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;IIII)V

    .line 734
    :cond_3
    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->d()I

    move-result v0

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->e()I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 737
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->g()V

    .line 738
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->q:Lcom/startapp/android/publish/slider/sliding/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/slider/sliding/a;->a()Z

    move-result v0

    .line 741
    :goto_0
    if-nez v0, :cond_4

    .line 742
    if-eqz p1, :cond_5

    .line 743
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 750
    :cond_4
    :goto_1
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 745
    :cond_5
    invoke-virtual {p0, v6}, Lcom/startapp/android/publish/slider/sliding/c;->c(I)V

    goto :goto_1

    :cond_6
    move v0, v6

    .line 750
    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->o:I

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1047
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1048
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1050
    if-nez v2, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/c;->e()V

    .line 1056
    :cond_0
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1057
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    .line 1059
    :cond_1
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1061
    packed-switch v2, :pswitch_data_0

    .line 1195
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1063
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1065
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1066
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v3

    .line 1068
    invoke-direct {p0, v1, v2, v0}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFI)V

    .line 1073
    invoke-virtual {p0, v3, v0}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    .line 1075
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aget v1, v1, v0

    .line 1076
    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1077
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(II)V

    goto :goto_0

    .line 1083
    :pswitch_2
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1084
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1085
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1087
    invoke-direct {p0, v1, v2, v0}, Lcom/startapp/android/publish/slider/sliding/c;->a(FFI)V

    .line 1090
    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-nez v3, :cond_3

    .line 1093
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v1

    .line 1094
    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    .line 1096
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aget v1, v1, v0

    .line 1097
    iget v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1098
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->p:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(II)V

    goto :goto_0

    .line 1100
    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/startapp/android/publish/slider/sliding/c;->d(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    goto :goto_0

    .line 1111
    :pswitch_3
    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v1, v8, :cond_4

    .line 1112
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1113
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1114
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1115
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1116
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1118
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/startapp/android/publish/slider/sliding/c;->b(IIII)V

    .line 1120
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/slider/sliding/c;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1123
    :cond_4
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1124
    :goto_1
    if-ge v0, v1, :cond_5

    .line 1125
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1126
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1127
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1128
    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    .line 1129
    iget-object v6, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    aget v6, v6, v2

    sub-float v6, v4, v6

    .line 1131
    invoke-direct {p0, v5, v6, v2}, Lcom/startapp/android/publish/slider/sliding/c;->b(FFI)V

    .line 1132
    iget v7, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v7, v8, :cond_6

    .line 1143
    :cond_5
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/slider/sliding/c;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1137
    :cond_6
    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v3

    .line 1138
    invoke-direct {p0, v3, v5, v6}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3, v2}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1124
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1149
    :pswitch_4
    invoke-static {p1, v3}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1150
    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v3, v8, :cond_a

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    if-ne v2, v3, :cond_a

    .line 1153
    invoke-static {p1}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1154
    :goto_2
    if-ge v0, v3, :cond_d

    .line 1155
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->b(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1156
    iget v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    if-ne v4, v5, :cond_9

    .line 1154
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1161
    :cond_9
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->c(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1162
    invoke-static {p1, v0}, Lcom/startapp/android/publish/slider/sliding/b/h;->d(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1163
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/startapp/android/publish/slider/sliding/c;->e(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1165
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    .line 1170
    :goto_3
    if-ne v0, v1, :cond_a

    .line 1172
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/c;->g()V

    .line 1175
    :cond_a
    invoke-direct {p0, v2}, Lcom/startapp/android/publish/slider/sliding/c;->f(I)V

    goto/16 :goto_0

    .line 1180
    :pswitch_5
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v0, v8, :cond_b

    .line 1181
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/c;->g()V

    .line 1183
    :cond_b
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/c;->e()V

    goto/16 :goto_0

    .line 1188
    :pswitch_6
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-ne v0, v8, :cond_c

    .line 1189
    invoke-direct {p0, v5, v5}, Lcom/startapp/android/publish/slider/sliding/c;->a(FF)V

    .line 1191
    :cond_c
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/c;->e()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_3

    .line 1061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 861
    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->k:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1302
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/slider/sliding/c;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 1319
    :cond_0
    :goto_0
    return v1

    .line 1306
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_2

    move v3, v1

    .line 1307
    :goto_1
    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 1309
    :goto_2
    iget-object v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->f:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1310
    iget-object v5, p0, Lcom/startapp/android/publish/slider/sliding/c;->g:[F

    aget v5, v5, p2

    iget-object v6, p0, Lcom/startapp/android/publish/slider/sliding/c;->e:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    .line 1312
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1313
    mul-float v0, v4, v4

    mul-float v3, v5, v5

    add-float/2addr v0, v3

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    iget v4, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 1306
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1307
    goto :goto_2

    .line 1314
    :cond_4
    if-eqz v3, :cond_5

    .line 1315
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1316
    :cond_5
    if-eqz v0, :cond_6

    .line 1317
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1319
    goto :goto_0
.end method

.method b(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 884
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    if-ne v1, p2, :cond_0

    .line 893
    :goto_0
    return v0

    .line 888
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v1, p1, p2}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    iput p2, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/c;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 893
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1411
    if-nez p1, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    return-object v0
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    if-eq v0, p1, :cond_0

    .line 866
    iput p1, p0, Lcom/startapp/android/publish/slider/sliding/c;->a:I

    .line 867
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/slider/sliding/c$a;->a(I)V

    .line 868
    if-nez p1, :cond_0

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    .line 872
    :cond_0
    return-void
.end method

.method public c(II)Z
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/slider/sliding/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->b:I

    return v0
.end method

.method public d(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1277
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->d:[F

    array-length v2, v1

    move v1, v0

    .line 1278
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1279
    invoke-virtual {p0, p1, v1}, Lcom/startapp/android/publish/slider/sliding/c;->b(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1280
    const/4 v0, 0x1

    .line 1283
    :cond_0
    return v0

    .line 1278
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(II)Z
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/startapp/android/publish/slider/sliding/c;->b(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public e(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1430
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1431
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/c;->r:Lcom/startapp/android/publish/slider/sliding/c$a;

    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/slider/sliding/c$a;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1437
    :goto_1
    return-object v0

    .line 1430
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1437
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, -0x1

    iput v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->c:I

    .line 500
    invoke-direct {p0}, Lcom/startapp/android/publish/slider/sliding/c;->f()V

    .line 502
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/slider/sliding/c;->l:Landroid/view/VelocityTracker;

    .line 506
    :cond_0
    return-void
.end method

.method public e(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1332
    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/c;->h:[I

    array-length v2, v1

    move v1, v0

    .line 1333
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1334
    invoke-virtual {p0, p1, v1}, Lcom/startapp/android/publish/slider/sliding/c;->c(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1335
    const/4 v0, 0x1

    .line 1338
    :cond_0
    return v0

    .line 1333
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
