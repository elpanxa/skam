.class Lio/casper/android/activity/EditorActivity$9;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 895
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/casper/android/util/l;->a(Landroid/app/Activity;)V

    .line 897
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/casper/android/ui/a;->a(I)V

    .line 899
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->q(Lio/casper/android/activity/EditorActivity;)I

    .line 901
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->r(Lio/casper/android/activity/EditorActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0, v2}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;I)I

    .line 905
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->r(Lio/casper/android/activity/EditorActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 907
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    sget v1, Lio/casper/android/ui/a;->TYPE_NONE:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setType(I)V

    .line 910
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->r(Lio/casper/android/activity/EditorActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 911
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 912
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    sget v1, Lio/casper/android/ui/a;->TYPE_STANDARD:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setType(I)V

    .line 915
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->r(Lio/casper/android/activity/EditorActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 916
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 917
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    sget v1, Lio/casper/android/ui/a;->TYPE_STANDARD_LEFT:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setType(I)V

    .line 920
    :cond_3
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->r(Lio/casper/android/activity/EditorActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 921
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 922
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    sget v1, Lio/casper/android/ui/a;->TYPE_LARGE:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setType(I)V

    .line 925
    :cond_4
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->r(Lio/casper/android/activity/EditorActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 926
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 927
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$9;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    sget v1, Lio/casper/android/ui/a;->TYPE_LARGE_LEFT:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setType(I)V

    .line 930
    :cond_5
    return-void
.end method
