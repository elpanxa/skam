.class Lio/casper/android/activity/EditorActivity$11$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$11;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$11;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f070042

    const v3, 0x7f070036

    const/16 v2, 0xc

    .line 951
    if-nez p3, :cond_1

    .line 963
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->with(Landroid/content/Context;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    .line 964
    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/ui/a;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    sget-object v1, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .line 965
    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->wheelType(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    .line 966
    invoke-virtual {v0, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->density(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    .line 967
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/EditorActivity$11$1$1;

    invoke-direct {v2, p0}, Lio/casper/android/activity/EditorActivity$11$1$1;-><init>(Lio/casper/android/activity/EditorActivity$11$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    .line 973
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    .line 974
    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->build()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 989
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->with(Landroid/content/Context;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    .line 990
    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/ui/a;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    sget-object v1, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .line 991
    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->wheelType(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    .line 992
    invoke-virtual {v0, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->density(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    .line 993
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/EditorActivity$11$1$2;

    invoke-direct {v2, p0}, Lio/casper/android/activity/EditorActivity$11$1$2;-><init>(Lio/casper/android/activity/EditorActivity$11$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$11$1;->this$1:Lio/casper/android/activity/EditorActivity$11;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$11;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    .line 999
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->build()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
