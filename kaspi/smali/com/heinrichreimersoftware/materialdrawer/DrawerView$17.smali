.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->openProfileList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 805
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 796
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1800(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 798
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # setter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z
    invoke-static {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1902(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Z)Z

    .line 800
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$2000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    .line 801
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListViewProfileList:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$17;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1800(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 792
    return-void
.end method
