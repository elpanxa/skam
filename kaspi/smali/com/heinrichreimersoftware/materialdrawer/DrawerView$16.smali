.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;
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

.field final synthetic val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iput-object p2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewProfileAvatar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1600(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    move-result-object v0

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16$2;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16$2;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;)V

    .line 725
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 733
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    move-result-object v0

    new-instance v1, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16$1;

    invoke-direct {v1, p0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16$1;-><init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView$16;)V

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;)V

    .line 711
    return-void
.end method
