.class public Lio/casper/android/ui/a/a/b$b;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private action:I

.field private angle:F

.field private angleIsCalculated:Z

.field private diameter:F

.field private diameterIsCalculated:Z

.field private diameterSq:F

.field private diameterSqIsCalculated:Z

.field private dx:F

.field private dy:F

.field private eventTime:J

.field private isDown:Z

.field private isMultiTouch:Z

.field private numPoints:I

.field private pointerIds:[I

.field private pressureMid:F

.field private pressures:[F

.field private xMid:F

.field private xs:[F

.field private yMid:F

.field private ys:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-array v0, v1, [F

    iput-object v0, p0, Lio/casper/android/ui/a/a/b$b;->xs:[F

    .line 652
    new-array v0, v1, [F

    iput-object v0, p0, Lio/casper/android/ui/a/a/b$b;->ys:[F

    .line 653
    new-array v0, v1, [F

    iput-object v0, p0, Lio/casper/android/ui/a/a/b$b;->pressures:[F

    .line 654
    new-array v0, v1, [I

    iput-object v0, p0, Lio/casper/android/ui/a/a/b$b;->pointerIds:[I

    return-void
.end method

.method private a(I)I
    .locals 7

    .prologue
    .line 763
    const/4 v2, 0x0

    const v1, 0x8000

    const/16 v0, 0xf

    move v4, v1

    move v1, p1

    move v6, v2

    move v2, v0

    move v0, v6

    .line 765
    :goto_0
    shl-int/lit8 v3, v0, 0x1

    add-int v5, v3, v4

    add-int/lit8 v3, v2, -0x1

    shl-int v2, v5, v2

    if-lt v1, v2, :cond_0

    .line 766
    add-int/2addr v0, v4

    .line 767
    sub-int/2addr v1, v2

    .line 769
    :cond_0
    shr-int/lit8 v2, v4, 0x1

    if-gtz v2, :cond_1

    .line 770
    return v0

    :cond_1
    move v4, v2

    move v2, v3

    goto :goto_0
.end method

.method private a(I[F[F[F[IIZJ)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 683
    iput-wide p8, p0, Lio/casper/android/ui/a/a/b$b;->eventTime:J

    .line 684
    iput p6, p0, Lio/casper/android/ui/a/a/b$b;->action:I

    .line 685
    iput p1, p0, Lio/casper/android/ui/a/a/b$b;->numPoints:I

    move v0, v2

    .line 686
    :goto_0
    if-ge v0, p1, :cond_0

    .line 687
    iget-object v3, p0, Lio/casper/android/ui/a/a/b$b;->xs:[F

    aget v4, p2, v0

    aput v4, v3, v0

    .line 688
    iget-object v3, p0, Lio/casper/android/ui/a/a/b$b;->ys:[F

    aget v4, p3, v0

    aput v4, v3, v0

    .line 689
    iget-object v3, p0, Lio/casper/android/ui/a/a/b$b;->pressures:[F

    aget v4, p4, v0

    aput v4, v3, v0

    .line 690
    iget-object v3, p0, Lio/casper/android/ui/a/a/b$b;->pointerIds:[I

    aget v4, p5, v0

    aput v4, v3, v0

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iput-boolean p7, p0, Lio/casper/android/ui/a/a/b$b;->isDown:Z

    .line 693
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    .line 695
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    if-eqz v0, :cond_2

    .line 696
    aget v0, p2, v2

    aget v3, p2, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->xMid:F

    .line 697
    aget v0, p3, v2

    aget v3, p3, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->yMid:F

    .line 698
    aget v0, p4, v2

    aget v3, p4, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->pressureMid:F

    .line 699
    aget v0, p2, v1

    aget v3, p2, v2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    .line 700
    aget v0, p3, v1

    aget v1, p3, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    .line 710
    :goto_2
    iput-boolean v2, p0, Lio/casper/android/ui/a/a/b$b;->angleIsCalculated:Z

    iput-boolean v2, p0, Lio/casper/android/ui/a/a/b$b;->diameterIsCalculated:Z

    iput-boolean v2, p0, Lio/casper/android/ui/a/a/b$b;->diameterSqIsCalculated:Z

    .line 711
    return-void

    :cond_1
    move v0, v2

    .line 693
    goto :goto_1

    .line 704
    :cond_2
    aget v0, p2, v2

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->xMid:F

    .line 705
    aget v0, p3, v2

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->yMid:F

    .line 706
    aget v0, p4, v2

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->pressureMid:F

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    goto :goto_2
.end method

.method static synthetic a(Lio/casper/android/ui/a/a/b$b;I[F[F[F[IIZJ)V
    .locals 0

    .prologue
    .line 648
    invoke-direct/range {p0 .. p9}, Lio/casper/android/ui/a/a/b$b;->a(I[F[F[F[IIZJ)V

    return-void
.end method

.method static synthetic b(Lio/casper/android/ui/a/a/b$b;)J
    .locals 2

    .prologue
    .line 648
    iget-wide v0, p0, Lio/casper/android/ui/a/a/b$b;->eventTime:J

    return-wide v0
.end method


# virtual methods
.method public a(Lio/casper/android/ui/a/a/b$b;)V
    .locals 3

    .prologue
    .line 719
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->numPoints:I

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->numPoints:I

    .line 720
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lio/casper/android/ui/a/a/b$b;->numPoints:I

    if-ge v0, v1, :cond_0

    .line 721
    iget-object v1, p0, Lio/casper/android/ui/a/a/b$b;->xs:[F

    iget-object v2, p1, Lio/casper/android/ui/a/a/b$b;->xs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 722
    iget-object v1, p0, Lio/casper/android/ui/a/a/b$b;->ys:[F

    iget-object v2, p1, Lio/casper/android/ui/a/a/b$b;->ys:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 723
    iget-object v1, p0, Lio/casper/android/ui/a/a/b$b;->pressures:[F

    iget-object v2, p1, Lio/casper/android/ui/a/a/b$b;->pressures:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 724
    iget-object v1, p0, Lio/casper/android/ui/a/a/b$b;->pointerIds:[I

    iget-object v2, p1, Lio/casper/android/ui/a/a/b$b;->pointerIds:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_0
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->xMid:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->xMid:F

    .line 727
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->yMid:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->yMid:F

    .line 728
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->pressureMid:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->pressureMid:F

    .line 729
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->dx:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    .line 730
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->dy:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    .line 731
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->diameter:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    .line 732
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->diameterSq:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterSq:F

    .line 733
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->angle:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->angle:F

    .line 734
    iget-boolean v0, p1, Lio/casper/android/ui/a/a/b$b;->isDown:Z

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isDown:Z

    .line 735
    iget v0, p1, Lio/casper/android/ui/a/a/b$b;->action:I

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->action:I

    .line 736
    iget-boolean v0, p1, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    .line 737
    iget-boolean v0, p1, Lio/casper/android/ui/a/a/b$b;->diameterIsCalculated:Z

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterIsCalculated:Z

    .line 738
    iget-boolean v0, p1, Lio/casper/android/ui/a/a/b$b;->diameterSqIsCalculated:Z

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterSqIsCalculated:Z

    .line 739
    iget-boolean v0, p1, Lio/casper/android/ui/a/a/b$b;->angleIsCalculated:Z

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->angleIsCalculated:Z

    .line 740
    iget-wide v0, p1, Lio/casper/android/ui/a/a/b$b;->eventTime:J

    iput-wide v0, p0, Lio/casper/android/ui/a/a/b$b;->eventTime:J

    .line 741
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()F
    .locals 3

    .prologue
    .line 776
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterSqIsCalculated:Z

    if-nez v0, :cond_0

    .line 777
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    iget v1, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    iget v2, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterSq:F

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterSqIsCalculated:Z

    .line 780
    :cond_0
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterSq:F

    return v0

    .line 777
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 786
    iget-boolean v1, p0, Lio/casper/android/ui/a/a/b$b;->diameterIsCalculated:Z

    if-nez v1, :cond_1

    .line 787
    iget-boolean v1, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    if-nez v1, :cond_2

    .line 788
    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    .line 803
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->diameterIsCalculated:Z

    .line 805
    :cond_1
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    return v0

    .line 794
    :cond_2
    invoke-virtual {p0}, Lio/casper/android/ui/a/a/b$b;->d()F

    move-result v1

    .line 795
    cmpl-float v2, v1, v0

    if-nez v2, :cond_4

    .line 796
    :goto_1
    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    .line 798
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    iget v1, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 799
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->dx:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    .line 800
    :cond_3
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    iget v1, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 801
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->dy:F

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->diameter:F

    goto :goto_0

    .line 795
    :cond_4
    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 796
    invoke-direct {p0, v0}, Lio/casper/android/ui/a/a/b$b;->a(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public f()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 814
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->angleIsCalculated:Z

    if-nez v0, :cond_0

    .line 815
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isMultiTouch:Z

    if-nez v0, :cond_1

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->angle:F

    .line 819
    :goto_0
    iput-boolean v4, p0, Lio/casper/android/ui/a/a/b$b;->angleIsCalculated:Z

    .line 821
    :cond_0
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->angle:F

    return v0

    .line 818
    :cond_1
    iget-object v0, p0, Lio/casper/android/ui/a/a/b$b;->ys:[F

    aget v0, v0, v4

    iget-object v1, p0, Lio/casper/android/ui/a/a/b$b;->ys:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lio/casper/android/ui/a/a/b$b;->xs:[F

    aget v2, v2, v4

    iget-object v3, p0, Lio/casper/android/ui/a/a/b$b;->xs:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lio/casper/android/ui/a/a/b$b;->angle:F

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->xMid:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lio/casper/android/ui/a/a/b$b;->yMid:F

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lio/casper/android/ui/a/a/b$b;->isDown:Z

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 892
    iget-wide v0, p0, Lio/casper/android/ui/a/a/b$b;->eventTime:J

    return-wide v0
.end method
