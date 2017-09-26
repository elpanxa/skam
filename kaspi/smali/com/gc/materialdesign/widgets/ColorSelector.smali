.class public Lcom/gc/materialdesign/widgets/ColorSelector;
.super Landroid/app/Dialog;
.source "ColorSelector.java"

# interfaces
.implements Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field backView:Landroid/view/View;

.field blue:Lcom/gc/materialdesign/views/Slider;

.field color:I

.field colorView:Landroid/view/View;

.field context:Landroid/content/Context;

.field green:Lcom/gc/materialdesign/views/Slider;

.field onColorSelectedListener:Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;

.field red:Lcom/gc/materialdesign/views/Slider;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;)V
    .locals 1

    .prologue
    .line 34
    const v0, 0x103000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    .line 35
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->context:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->onColorSelectedListener:Lcom/gc/materialdesign/widgets/ColorSelector$OnColorSelectedListener;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    .line 39
    :cond_0
    new-instance v0, Lcom/gc/materialdesign/widgets/ColorSelector$1;

    invoke-direct {v0, p0}, Lcom/gc/materialdesign/widgets/ColorSelector$1;-><init>(Lcom/gc/materialdesign/widgets/ColorSelector;)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    return-void
.end method

.method static synthetic access$001(Lcom/gc/materialdesign/widgets/ColorSelector;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->context:Landroid/content/Context;

    sget v1, Lcom/gc/materialdesign/R$anim;->dialog_main_hide_amination:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/gc/materialdesign/widgets/ColorSelector$4;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/ColorSelector$4;-><init>(Lcom/gc/materialdesign/widgets/ColorSelector;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 147
    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_root_hide_amin:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->requestWindowFeature(I)Z

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/gc/materialdesign/R$layout;->color_selector:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->setContentView(I)V

    .line 57
    sget v0, Lcom/gc/materialdesign/R$id;->contentSelector:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    .line 58
    sget v0, Lcom/gc/materialdesign/R$id;->rootSelector:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->backView:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->backView:Landroid/view/View;

    new-instance v1, Lcom/gc/materialdesign/widgets/ColorSelector$2;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/ColorSelector$2;-><init>(Lcom/gc/materialdesign/widgets/ColorSelector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    sget v0, Lcom/gc/materialdesign/R$id;->viewColor:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->colorView:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->colorView:Landroid/view/View;

    iget v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->colorView:Landroid/view/View;

    new-instance v1, Lcom/gc/materialdesign/widgets/ColorSelector$3;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/ColorSelector$3;-><init>(Lcom/gc/materialdesign/widgets/ColorSelector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 86
    sget v0, Lcom/gc/materialdesign/R$id;->red:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/Slider;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->red:Lcom/gc/materialdesign/views/Slider;

    .line 87
    sget v0, Lcom/gc/materialdesign/R$id;->green:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/Slider;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->green:Lcom/gc/materialdesign/views/Slider;

    .line 88
    sget v0, Lcom/gc/materialdesign/R$id;->blue:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/Slider;

    iput-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->blue:Lcom/gc/materialdesign/views/Slider;

    .line 90
    iget v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 91
    iget v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 92
    iget v2, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    .line 94
    iget-object v3, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->red:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v3, v0}, Lcom/gc/materialdesign/views/Slider;->setValue(I)V

    .line 95
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->green:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/Slider;->setValue(I)V

    .line 96
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->blue:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v0, v2}, Lcom/gc/materialdesign/views/Slider;->setValue(I)V

    .line 98
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->red:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v0, p0}, Lcom/gc/materialdesign/views/Slider;->setOnValueChangedListener(Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;)V

    .line 99
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->green:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v0, p0}, Lcom/gc/materialdesign/views/Slider;->setOnValueChangedListener(Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;)V

    .line 100
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->blue:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v0, p0}, Lcom/gc/materialdesign/views/Slider;->setOnValueChangedListener(Lcom/gc/materialdesign/views/Slider$OnValueChangedListener;)V

    .line 101
    return-void
.end method

.method public onValueChanged(I)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->red:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/Slider;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->green:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v1}, Lcom/gc/materialdesign/views/Slider;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->blue:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/Slider;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    .line 113
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->colorView:Landroid/view/View;

    iget v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 106
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_main_show_amination:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->backView:Landroid/view/View;

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector;->context:Landroid/content/Context;

    sget v2, Lcom/gc/materialdesign/R$anim;->dialog_root_show_amin:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method
