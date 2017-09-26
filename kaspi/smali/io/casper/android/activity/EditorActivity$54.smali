.class Lio/casper/android/activity/EditorActivity$54;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->a()V
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
    .line 729
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$54;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 732
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 758
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 736
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$54;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-class v3, Lio/casper/android/activity/FontsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 737
    const-string v2, "action_choose_font"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$54;->this$0:Lio/casper/android/activity/EditorActivity;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v1, v3}, Lio/casper/android/activity/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 747
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$54;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/casper/android/ui/a;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v1

    .line 749
    const-string v2, "EditorActivity"

    const-string v3, "Removing TypeFace from CaptionView failed with Exception"

    invoke-static {v2, v3, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x7f0c0153
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
