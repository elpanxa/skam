.class Lio/casper/android/activity/EditorActivity$34$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$34;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$34;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$34;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$34$1;->this$1:Lio/casper/android/activity/EditorActivity$34;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$34$1;->this$1:Lio/casper/android/activity/EditorActivity$34;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$34;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$34$1;->this$1:Lio/casper/android/activity/EditorActivity$34;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$34;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->c(Lio/casper/android/activity/EditorActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$34$1;->this$1:Lio/casper/android/activity/EditorActivity$34;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$34;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 643
    return-void
.end method
