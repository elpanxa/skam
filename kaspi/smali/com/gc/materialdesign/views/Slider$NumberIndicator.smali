.class Lcom/gc/materialdesign/views/Slider$NumberIndicator;
.super Landroid/app/Dialog;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/views/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberIndicator"
.end annotation


# instance fields
.field indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

.field numberIndicator:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/gc/materialdesign/views/Slider;


# direct methods
.method public constructor <init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    .line 338
    const v0, 0x103000f

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 339
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 366
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    iput v1, v0, Lcom/gc/materialdesign/views/Slider$Indicator;->y:F

    .line 367
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    iput v1, v0, Lcom/gc/materialdesign/views/Slider$Indicator;->size:F

    .line 368
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gc/materialdesign/views/Slider$Indicator;->animate:Z

    .line 369
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->requestWindowFeature(I)Z

    .line 344
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 345
    sget v0, Lcom/gc/materialdesign/R$layout;->number_indicator_spinner:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->setContentView(I)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->setCanceledOnTouchOutside(Z)V

    .line 348
    sget v0, Lcom/gc/materialdesign/R$id;->number_indicator_spinner_content:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 350
    new-instance v1, Lcom/gc/materialdesign/views/Slider$Indicator;

    iget-object v2, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->this$0:Lcom/gc/materialdesign/views/Slider;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gc/materialdesign/views/Slider$Indicator;-><init>(Lcom/gc/materialdesign/views/Slider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    .line 351
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 353
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    .line 354
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 356
    iget-object v1, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->numberIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/gc/materialdesign/views/Slider$NumberIndicator;->indicator:Lcom/gc/materialdesign/views/Slider$Indicator;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/gc/materialdesign/views/Slider$Indicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    return-void
.end method
