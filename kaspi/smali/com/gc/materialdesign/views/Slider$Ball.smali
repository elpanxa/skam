.class Lcom/gc/materialdesign/views/Slider$Ball;
.super Landroid/view/View;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/views/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ball"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/Slider;

.field xCen:F

.field xFin:F

.field xIni:F


# direct methods
.method public constructor <init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 311
    iput-object p1, p0, Lcom/gc/materialdesign/views/Slider$Ball;->this$0:Lcom/gc/materialdesign/views/Slider;

    .line 312
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 313
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_switch_ball_uncheck:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$Ball;->setBackgroundResource(I)V

    .line 314
    return-void
.end method


# virtual methods
.method public changeBackground()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Ball;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget v0, v0, Lcom/gc/materialdesign/views/Slider;->value:I

    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$Ball;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget v1, v1, Lcom/gc/materialdesign/views/Slider;->min:I

    if-eq v0, v1, :cond_0

    .line 318
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_checkbox:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$Ball;->setBackgroundResource(I)V

    .line 319
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$Ball;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 320
    sget v1, Lcom/gc/materialdesign/R$id;->shape_bacground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 322
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$Ball;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget v1, v1, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_switch_ball_uncheck:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$Ball;->setBackgroundResource(I)V

    goto :goto_0
.end method
