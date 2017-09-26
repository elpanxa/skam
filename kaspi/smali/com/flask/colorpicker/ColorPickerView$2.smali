.class Lcom/flask/colorpicker/ColorPickerView$2;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flask/colorpicker/ColorPickerView;->setColorPreview(Landroid/widget/LinearLayout;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flask/colorpicker/ColorPickerView;


# direct methods
.method constructor <init>(Lcom/flask/colorpicker/ColorPickerView;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView$2;->this$0:Lcom/flask/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 418
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView$2;->this$0:Lcom/flask/colorpicker/ColorPickerView;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flask/colorpicker/ColorPickerView;->setSelectedColor(I)V

    goto :goto_0
.end method
