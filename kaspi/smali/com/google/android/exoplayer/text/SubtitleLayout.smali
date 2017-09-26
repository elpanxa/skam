.class public final Lcom/google/android/exoplayer/text/SubtitleLayout;
.super Landroid/view/View;
.source "SubtitleLayout.java"


# instance fields
.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private fontScale:F

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/CuePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/SubtitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->fontScale:F

    .line 45
    sget-object v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    if-nez v1, :cond_0

    move v9, v0

    :goto_0
    move v10, v0

    .line 98
    :goto_1
    if-ge v10, v9, :cond_1

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/CuePainter;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/text/Cue;

    iget-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v3, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->fontScale:F

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getBottom()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer/text/CuePainter;->draw(Lcom/google/android/exoplayer/text/Cue;Lcom/google/android/exoplayer/text/CaptionStyleCompat;FLandroid/graphics/Canvas;IIII)V

    .line 98
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v9, v1

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    .line 59
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    new-instance v2, Lcom/google/android/exoplayer/text/CuePainter;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/text/CuePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method

.method public setFontScale(F)V
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->fontScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->fontScale:F

    .line 78
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method

.method public setStyle(Lcom/google/android/exoplayer/text/CaptionStyleCompat;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method
