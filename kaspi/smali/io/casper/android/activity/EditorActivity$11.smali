.class Lio/casper/android/activity/EditorActivity$11;
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
    .line 940
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 944
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 945
    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 946
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 947
    new-instance v1, Lio/casper/android/activity/EditorActivity$11$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$11$1;-><init>(Lio/casper/android/activity/EditorActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1008
    return-void
.end method
