.class Lio/casper/android/activity/EditorActivity$36;
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
    .line 1276
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$36;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$36;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->A(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$36;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->A(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$36;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->B(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$36;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->A(Lio/casper/android/activity/EditorActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0200b2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1283
    return-void

    .line 1280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1281
    :cond_1
    const v0, 0x7f0200dd

    goto :goto_1
.end method
