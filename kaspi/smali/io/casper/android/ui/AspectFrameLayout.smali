.class public Lio/casper/android/ui/AspectFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AspectFL"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTargetAspect:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    .line 22
    iput-object p1, p0, Lio/casper/android/ui/AspectFrameLayout;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    .line 28
    iput-object p1, p0, Lio/casper/android/ui/AspectFrameLayout;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 48
    const-string v0, "AspectFL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] height=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-wide v0, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 61
    invoke-virtual {p0}, Lio/casper/android/ui/AspectFrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lio/casper/android/ui/AspectFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    .line 62
    invoke-virtual {p0}, Lio/casper/android/ui/AspectFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lio/casper/android/ui/AspectFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    .line 63
    sub-int v1, v0, v3

    .line 64
    sub-int v0, v2, v4

    .line 66
    int-to-double v6, v1

    int-to-double v8, v0

    div-double/2addr v6, v8

    .line 67
    iget-wide v8, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    div-double v6, v8, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v8, v10

    if-gez v2, :cond_1

    .line 74
    const-string v2, "AspectFL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aspect ratio is good (target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 97
    return-void

    .line 78
    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_2

    .line 80
    int-to-double v6, v1

    iget-wide v8, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    div-double/2addr v6, v8

    double-to-int v0, v6

    .line 86
    :goto_1
    add-int/2addr v1, v3

    .line 87
    add-int/2addr v0, v4

    .line 89
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 90
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 83
    :cond_2
    int-to-double v6, v0

    iget-wide v8, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    mul-double/2addr v6, v8

    double-to-int v1, v6

    goto :goto_1
.end method

.method public setAspectRatio(D)V
    .locals 5

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_0
    const-string v0, "AspectFL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting aspect ratio to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-wide v0, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 40
    iput-wide p1, p0, Lio/casper/android/ui/AspectFrameLayout;->mTargetAspect:D

    .line 41
    invoke-virtual {p0}, Lio/casper/android/ui/AspectFrameLayout;->requestLayout()V

    .line 43
    :cond_1
    return-void
.end method
