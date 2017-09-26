.class Lcom/gc/materialdesign/views/Slider$Indicator;
.super Landroid/widget/RelativeLayout;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/views/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Indicator"
.end annotation


# instance fields
.field animate:Z

.field finalSize:F

.field finalY:F

.field numberIndicatorResize:Z

.field size:F

.field final synthetic this$0:Lcom/gc/materialdesign/views/Slider;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 394
    iput-object p1, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    .line 395
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 380
    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->x:F

    .line 381
    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    .line 383
    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    .line 386
    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalY:F

    .line 388
    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalSize:F

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->animate:Z

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->numberIndicatorResize:Z

    .line 396
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$Indicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$Indicator;->setBackgroundColor(I)V

    .line 398
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 402
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 404
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->numberIndicatorResize:Z

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    iget v1, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalSize:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 408
    iget v1, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalSize:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 409
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v1, v1, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v1, v1, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 413
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 414
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget v0, v0, Lcom/gc/materialdesign/views/Slider;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->animate:Z

    if-eqz v0, :cond_2

    .line 416
    iget v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 417
    iget v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalY:F

    iget v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalSize:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    .line 418
    :cond_1
    iget v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$Indicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    .line 419
    iget v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$Indicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v2

    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Slider$Ball;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/gc/materialdesign/utils/Utils;->getRelativeLeft(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v2, v2, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    iget v3, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 425
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->animate:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    iget v1, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->finalSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->animate:Z

    .line 427
    :cond_3
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->animate:Z

    if-nez v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v1, v0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v2

    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Slider$Ball;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/gc/materialdesign/utils/Utils;->getRelativeLeft(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v2, v2, Lcom/gc/materialdesign/views/Slider;->ball:Lcom/gc/materialdesign/views/Slider$Ball;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Slider$Ball;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 434
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    iget v1, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    iget v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 435
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider;->numberIndicator:Lcom/gc/materialdesign/views/Slider$NumberIndicator;

    iget-object v0, v0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider$Indicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    iget v2, v2, Lcom/gc/materialdesign/views/Slider;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_4
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$Indicator;->invalidate()V

    .line 439
    return-void
.end method
