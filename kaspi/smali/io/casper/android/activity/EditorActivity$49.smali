.class Lio/casper/android/activity/EditorActivity$49;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lio/casper/android/l/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 1893
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$49;->this$0:Lio/casper/android/activity/EditorActivity;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$49;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1897
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$49;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1899
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$49;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-string v1, "%s GeoFilter(s) at Location!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1900
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$49;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->K(Lio/casper/android/activity/EditorActivity;)V

    .line 1902
    return-void
.end method
