.class Lio/casper/android/activity/EditorActivity$20;
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
    .line 1091
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$20;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$20;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->with(Landroid/content/Context;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$20;->this$0:Lio/casper/android/activity/EditorActivity;

    .line 1106
    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->s(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/ui/d;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    sget-object v1, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->CIRCLE:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .line 1107
    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->wheelType(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 1108
    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->density(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$20;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    .line 1109
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/casper/android/activity/EditorActivity$20$1;

    invoke-direct {v2, p0}, Lio/casper/android/activity/EditorActivity$20$1;-><init>(Lio/casper/android/activity/EditorActivity$20;)V

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$20;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070036

    .line 1115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->build()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1119
    return-void
.end method
