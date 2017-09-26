.class Lio/casper/android/activity/EditorActivity$8;
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
    .line 882
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$8;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$8;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->o(Lio/casper/android/activity/EditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$8;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$8;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->p(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 887
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$8;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/casper/android/util/l;->a(Landroid/app/Activity;)V

    .line 888
    return-void
.end method
