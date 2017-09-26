.class public abstract Lcom/revmob/ads/internal/AnimationConfiguration;
.super Ljava/lang/Object;
.source "AnimationConfiguration.java"


# instance fields
.field private animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/revmob/ads/internal/AnimationConfiguration;->time:J

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/internal/AnimationConfiguration;->animations:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public addAnimation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/revmob/ads/internal/AnimationConfiguration;->animations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public abstract createClockwise()Landroid/view/animation/Animation;
.end method

.method public abstract createCounterClockwise()Landroid/view/animation/Animation;
.end method

.method public abstract createFadeIn()Landroid/view/animation/Animation;
.end method

.method public abstract createFadeOut()Landroid/view/animation/Animation;
.end method

.method public abstract createSlideDown()Landroid/view/animation/Animation;
.end method

.method public abstract createSlideLeft()Landroid/view/animation/Animation;
.end method

.method public abstract createSlideRight()Landroid/view/animation/Animation;
.end method

.method public abstract createSlideUp()Landroid/view/animation/Animation;
.end method

.method public abstract createZoomIn()Landroid/view/animation/Animation;
.end method

.method public abstract createZoomOut()Landroid/view/animation/Animation;
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 40
    iget-object v0, p0, Lcom/revmob/ads/internal/AnimationConfiguration;->animations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    const-string v3, "fade_in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createFadeIn()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v3, "fade_out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createFadeOut()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v3, "zoom_in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createZoomIn()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 47
    :cond_3
    const-string v3, "zoom_out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createZoomOut()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 49
    :cond_4
    const-string v3, "slide_up"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 50
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createSlideUp()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 51
    :cond_5
    const-string v3, "slide_down"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createSlideDown()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 53
    :cond_6
    const-string v3, "slide_right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 54
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createSlideRight()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 55
    :cond_7
    const-string v3, "slide_left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 56
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createSlideLeft()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 57
    :cond_8
    const-string v3, "rotate_clockwise"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 58
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createClockwise()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 59
    :cond_9
    const-string v3, "rotate_counterclockwise"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AnimationConfiguration;->createCounterClockwise()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 64
    :cond_a
    iget-wide v2, p0, Lcom/revmob/ads/internal/AnimationConfiguration;->time:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 65
    return-object v1
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/revmob/ads/internal/AnimationConfiguration;->time:J

    .line 21
    return-void
.end method
