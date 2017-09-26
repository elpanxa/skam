.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutParams"
.end annotation


# instance fields
.field private animationsSetToPlay:Z

.field private mCollapseAlpha:Landroid/animation/ObjectAnimator;

.field private mCollapseDir:Landroid/animation/ObjectAnimator;

.field private mExpandAlpha:Landroid/animation/ObjectAnimator;

.field private mExpandDir:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method public constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 436
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 437
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    .line 431
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    .line 432
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    .line 433
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    .line 439
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$900()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 440
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$1000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 442
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 445
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 447
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 448
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 450
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I
    invoke-static {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$1200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 453
    :pswitch_0
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 454
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 459
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_0

    .line 445
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 448
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method public setAnimationsTarget(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 471
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 473
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 474
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 475
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->animationsSetToPlay:Z

    .line 478
    :cond_0
    return-void
.end method
