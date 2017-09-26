.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;
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
    .line 577
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    iput-object p2, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 584
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # invokes: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfileTheme()V
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1300(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V

    .line 585
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1400(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1400(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    :goto_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1500(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->val$newProfile:Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;

    invoke-virtual {v1}, Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerProfile;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1500(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    :goto_1
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1400(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$14;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileDescription:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$1500(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 580
    return-void
.end method
