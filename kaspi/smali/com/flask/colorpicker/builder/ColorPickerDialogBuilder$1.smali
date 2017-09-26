.class Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

.field final synthetic val$onClickListener:Lcom/flask/colorpicker/builder/ColorPickerClickListener;


# direct methods
.method constructor <init>(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    iput-object p2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->val$onClickListener:Lcom/flask/colorpicker/builder/ColorPickerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    # getter for: Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;
    invoke-static {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->access$000(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;)Lcom/flask/colorpicker/ColorPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->this$0:Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    # getter for: Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;
    invoke-static {v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->access$000(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;)Lcom/flask/colorpicker/ColorPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flask/colorpicker/ColorPickerView;->getAllColors()[Ljava/lang/Integer;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;->val$onClickListener:Lcom/flask/colorpicker/builder/ColorPickerClickListener;

    invoke-interface {v2, p1, v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerClickListener;->onClick(Landroid/content/DialogInterface;I[Ljava/lang/Integer;)V

    .line 101
    return-void
.end method
