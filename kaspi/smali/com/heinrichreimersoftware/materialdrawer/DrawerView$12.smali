.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iput-object p2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;->val$filter:Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileBackgroundOverlay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$900(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$12;->val$filter:Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/animation/AnimatableColorMatrixColorFilter;->getColorFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 516
    return-void
.end method
