.class public Lcom/gc/materialdesign/views/ButtonFloatSmall;
.super Lcom/gc/materialdesign/views/ButtonFloat;
.source "ButtonFloatSmall.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/16 v0, 0x14

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/ButtonFloat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->sizeRadius:I

    .line 15
    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->sizeIcon:I

    .line 16
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->setDefaultProperties()V

    .line 17
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->sizeIcon:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    iget v2, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->sizeIcon:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected setDefaultProperties()V
    .locals 2

    .prologue
    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->rippleSpeed:F

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->rippleSize:I

    .line 26
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->sizeRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->setMinimumHeight(I)V

    .line 27
    iget v0, p0, Lcom/gc/materialdesign/views/ButtonFloatSmall;->sizeRadius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->setMinimumWidth(I)V

    .line 29
    sget v0, Lcom/gc/materialdesign/R$drawable;->background_button_float:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ButtonFloatSmall;->setBackgroundResource(I)V

    .line 31
    return-void
.end method
