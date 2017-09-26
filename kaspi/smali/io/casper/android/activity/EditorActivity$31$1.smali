.class Lio/casper/android/activity/EditorActivity$31$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$31;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$31;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$31;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$31$1;->this$1:Lio/casper/android/activity/EditorActivity$31;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 1222
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 1223
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$31$1;->this$1:Lio/casper/android/activity/EditorActivity$31;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$31;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->d(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/ui/a/a;->c()V

    .line 1224
    return-void
.end method
