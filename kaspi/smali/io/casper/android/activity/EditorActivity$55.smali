.class Lio/casper/android/activity/EditorActivity$55;
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
    .line 770
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->e(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 775
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/ui/a;->getType()I

    move-result v0

    sget v1, Lio/casper/android/ui/a;->TYPE_NONE:I

    if-ne v0, v1, :cond_0

    .line 776
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;I)I

    .line 777
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->f(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 778
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    sget v1, Lio/casper/android/ui/a;->TYPE_STANDARD:I

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setType(I)V

    .line 779
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/ui/a;->requestFocus()Z

    .line 780
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$55;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/casper/android/util/l;->a(Landroid/content/Context;)V

    .line 783
    :cond_0
    return-void
.end method
