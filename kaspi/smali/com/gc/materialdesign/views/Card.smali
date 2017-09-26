.class public Lcom/gc/materialdesign/views/Card;
.super Lcom/gc/materialdesign/views/CustomView;
.source "Card.java"


# instance fields
.field backgroundColor:I

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field textButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/Card;->backgroundColor:I

    .line 36
    invoke-virtual {p0, p2}, Lcom/gc/materialdesign/views/Card;->setAttributes(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected setAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 43
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_button_rectangle:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Card;->setBackgroundResource(I)V

    .line 46
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 47
    if-eq v0, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Card;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Card;->setBackgroundColor(I)V

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Card;->setBackgroundColor(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget v0, p0, Lcom/gc/materialdesign/views/Card;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Card;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 61
    iput p1, p0, Lcom/gc/materialdesign/views/Card;->backgroundColor:I

    .line 62
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Card;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lcom/gc/materialdesign/views/Card;->backgroundColor:I

    iput v0, p0, Lcom/gc/materialdesign/views/Card;->beforeBackground:I

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Card;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 65
    sget v1, Lcom/gc/materialdesign/R$id;->shape_bacground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 66
    iget v1, p0, Lcom/gc/materialdesign/views/Card;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    return-void
.end method
