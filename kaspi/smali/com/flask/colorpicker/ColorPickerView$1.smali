.class Lcom/flask/colorpicker/ColorPickerView$1;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flask/colorpicker/ColorPickerView;
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
    .line 53
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView$1;->this$0:Lcom/flask/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView$1;->this$0:Lcom/flask/colorpicker/ColorPickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/flask/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method
