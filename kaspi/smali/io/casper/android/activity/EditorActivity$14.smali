.class Lio/casper/android/activity/EditorActivity$14;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1018
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$14;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1022
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$14;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$14;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/ui/a;->getTextSize()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->setTextSize(F)V

    .line 1024
    const/4 v0, 0x1

    return v0
.end method
