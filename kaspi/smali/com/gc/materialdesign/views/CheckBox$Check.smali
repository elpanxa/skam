.class Lcom/gc/materialdesign/views/CheckBox$Check;
.super Landroid/view/View;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/views/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Check"
.end annotation


# instance fields
.field sprite:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/gc/materialdesign/views/CheckBox;


# direct methods
.method public constructor <init>(Lcom/gc/materialdesign/views/CheckBox;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    .line 188
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 189
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_checkbox_uncheck:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/CheckBox$Check;->setBackgroundResource(I)V

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/gc/materialdesign/R$drawable;->sprite_check:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->sprite:Landroid/graphics/Bitmap;

    .line 192
    return-void
.end method


# virtual methods
.method public changeBackground()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget-boolean v0, v0, Lcom/gc/materialdesign/views/CheckBox;->check:Z

    if-eqz v0, :cond_0

    .line 196
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_checkbox_check:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/CheckBox$Check;->setBackgroundResource(I)V

    .line 197
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 198
    sget v1, Lcom/gc/materialdesign/R$id;->shape_bacground:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 200
    iget-object v1, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v1, v1, Lcom/gc/materialdesign/views/CheckBox;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_checkbox_uncheck:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/CheckBox$Check;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 210
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget-boolean v0, v0, Lcom/gc/materialdesign/views/CheckBox;->check:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v0, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v1, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    .line 213
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->invalidate()V

    .line 225
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v1, v1, Lcom/gc/materialdesign/views/CheckBox;->step:I

    mul-int/lit8 v1, v1, 0x28

    iget-object v2, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v2, v2, Lcom/gc/materialdesign/views/CheckBox;->step:I

    mul-int/lit8 v2, v2, 0x28

    add-int/lit8 v2, v2, 0x28

    const/16 v3, 0x28

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 227
    iget-object v2, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->sprite:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 229
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v0, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    if-ltz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v1, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    .line 218
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->invalidate()V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/gc/materialdesign/views/CheckBox$Check;->this$0:Lcom/gc/materialdesign/views/CheckBox;

    iget v0, v0, Lcom/gc/materialdesign/views/CheckBox;->step:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->invalidate()V

    .line 222
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CheckBox$Check;->changeBackground()V

    goto :goto_0
.end method
