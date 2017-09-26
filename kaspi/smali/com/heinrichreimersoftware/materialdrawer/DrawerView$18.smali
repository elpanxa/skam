.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->closeProfileList()V
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
    .line 830
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1800(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 841
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    const/4 v1, 0x0

    # setter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->profileListOpen:Z
    invoke-static {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1902(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;Z)Z

    .line 843
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateListVisibility()V
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$2000(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    .line 844
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 833
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->linearListView:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$2100(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$18;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->imageViewOpenProfileListIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1800(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 835
    return-void
.end method
