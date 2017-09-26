.class Lio/casper/android/activity/EditorActivity$3$1$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/activity/EditorActivity$3$1;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$3$1;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$3$1$1;->this$2:Lio/casper/android/activity/EditorActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 813
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$3$1$1;->this$2:Lio/casper/android/activity/EditorActivity$3$1;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->i(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$3$1$1;->this$2:Lio/casper/android/activity/EditorActivity$3$1;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->i(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRotation()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 814
    return-void
.end method
