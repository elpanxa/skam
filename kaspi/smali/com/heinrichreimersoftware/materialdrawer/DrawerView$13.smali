.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->animateToProfile(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

.field final synthetic val$filter:Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;

.field final synthetic val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

.field final synthetic val$oldProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iput-object p2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$oldProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    iput-object p3, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    iput-object p4, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$filter:Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .prologue
    .line 534
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackground:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 537
    new-instance v1, Landroid/support/v7/graphics/Palette$Builder;

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x1f4

    .line 538
    invoke-virtual {v1, v0}, Landroid/support/v7/graphics/Palette$Builder;->resizeBitmapSize(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13$1;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13$1;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;)V

    .line 539
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$900(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->hasOnProfileSwitchListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->onProfileSwitchListener:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1200(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$oldProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    iget-object v2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$oldProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v2}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    iget-object v5, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v5}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getId()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile$OnProfileSwitchListener;->onSwitch(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;JLcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;J)V

    .line 556
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackground:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$oldProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$900(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$900(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->val$filter:Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;->getColorFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 527
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$900(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$13;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatarSecondary:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1100(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 530
    return-void
.end method
