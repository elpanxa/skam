.class Lio/casper/android/activity/EditorActivity$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->onBackPressed()V
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
    .line 231
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$1;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$1;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$1;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$1;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 237
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$1;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EditorActivity;->finish()V

    .line 238
    return-void
.end method
