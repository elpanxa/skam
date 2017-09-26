.class public Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
.super Ljava/lang/Object;
.source "ColorPickerDialogBuilder.java"


# instance fields
.field private alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

.field private builder:Landroid/support/v7/app/AlertDialog$Builder;

.field private colorEdit:Landroid/widget/EditText;

.field private colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

.field private colorPreview:Landroid/widget/LinearLayout;

.field private defaultMargin:I

.field private initialColor:[Ljava/lang/Integer;

.field private isAlphaSliderEnabled:Z

.field private isColorEditEnabled:Z

.field private isLightnessSliderEnabled:Z

.field private isPreviewEnabled:Z

.field private lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

.field private pickerContainer:Landroid/widget/LinearLayout;

.field private pickerCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 33
    iput-boolean v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 34
    iput-boolean v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    .line 35
    iput-boolean v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    .line 36
    iput v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    .line 37
    iput v3, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v4, v0, v3

    aput-object v4, v0, v2

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    .line 41
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    .line 42
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    .line 43
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    sget v0, Lcom/flask/colorpicker/R$dimen;->default_slider_margin:I

    invoke-static {p1, v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getDimensionAsPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49
    new-instance v1, Lcom/flask/colorpicker/ColorPickerView;

    invoke-direct {v1, p1}, Lcom/flask/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    .line 51
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;)Lcom/flask/colorpicker/ColorPickerView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    return-object v0
.end method

.method private static getDimensionAsPx(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getStartColor([Ljava/lang/Integer;)I
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 229
    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 234
    :cond_0
    return-object v1

    .line 232
    :cond_1
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static with(Landroid/content/Context;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    invoke-direct {v0, p0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public alphaSliderOnly()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 120
    return-object p0
.end method

.method public build()Landroid/support/v7/app/AlertDialog;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 162
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColors([Ljava/lang/Integer;I)V

    .line 164
    iget-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/flask/colorpicker/R$dimen;->default_slider_height:I

    invoke-static {v4, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getDimensionAsPx(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    iget v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    iget v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    new-instance v1, Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-direct {v1, v4}, Lcom/flask/colorpicker/slider/LightnessSlider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    .line 168
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {v1, v0}, Lcom/flask/colorpicker/slider/LightnessSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setLightnessSlider(Lcom/flask/colorpicker/slider/LightnessSlider;)V

    .line 171
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartColor([Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/slider/LightnessSlider;->setColor(I)V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/flask/colorpicker/R$dimen;->default_slider_height:I

    invoke-static {v4, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getDimensionAsPx(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 175
    iget v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    iget v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->defaultMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    new-instance v1, Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-direct {v1, v4}, Lcom/flask/colorpicker/slider/AlphaSlider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    .line 177
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {v1, v0}, Lcom/flask/colorpicker/slider/AlphaSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setAlphaSlider(Lcom/flask/colorpicker/slider/AlphaSlider;)V

    .line 180
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartColor([Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/slider/AlphaSlider;->setColor(I)V

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    sget v0, Lcom/flask/colorpicker/R$dimen;->default_padding_side:I

    invoke-static {v4, v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getDimensionAsPx(Landroid/content/Context;I)I

    move-result v0

    .line 185
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 186
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 187
    sget v0, Lcom/flask/colorpicker/R$layout;->picker_edit:I

    invoke-static {v4, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    .line 188
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v5}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 189
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 190
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 193
    const/16 v0, 0x9

    .line 194
    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    new-array v5, v6, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v3

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 196
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartColor([Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setColorEdit(Landroid/widget/EditText;)V

    .line 201
    :cond_2
    iget-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    if-eqz v0, :cond_4

    .line 202
    sget v0, Lcom/flask/colorpicker/R$layout;->color_preview:I

    invoke-static {v4, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    array-length v0, v0

    if-nez v0, :cond_5

    .line 207
    sget v0, Lcom/flask/colorpicker/R$layout;->color_selector:I

    invoke-static {v4, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 208
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->getStartOffset([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/ColorPickerView;->setColorPreview(Landroid/widget/LinearLayout;Ljava/lang/Integer;)V

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_5
    move v2, v3

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    if-ge v2, v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    .line 213
    sget v0, Lcom/flask/colorpicker/R$layout;->color_selector:I

    invoke-static {v4, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 214
    sget v1, Lcom/flask/colorpicker/R$id;->image_preview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 215
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget-object v6, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public density(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setDensity(I)V

    .line 86
    return-object p0
.end method

.method public initialColor(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    return-object p0
.end method

.method public initialColors([I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor:[Ljava/lang/Integer;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object p0
.end method

.method public lightnessSliderOnly()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 126
    return-object p0
.end method

.method public noSliders()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 113
    iput-boolean v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 114
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 108
    return-object p0
.end method

.method public setOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/ColorPickerView;->addOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)V

    .line 91
    return-object p0
.end method

.method public setPickerCount(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 152
    if-lt p1, v1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Picker Can Only Support 1-5 Colors"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    .line 155
    iget v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    if-le v0, v1, :cond_2

    .line 156
    iput-boolean v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    .line 157
    :cond_2
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    new-instance v1, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;

    invoke-direct {v1, p0, p2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder$1;-><init>(Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 103
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->builder:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 62
    return-object p0
.end method

.method public showAlphaSlider(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isAlphaSliderEnabled:Z

    .line 131
    return-object p0
.end method

.method public showColorEdit(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isColorEditEnabled:Z

    .line 141
    return-object p0
.end method

.method public showColorPreview(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 1

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isPreviewEnabled:Z

    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->pickerCount:I

    .line 148
    :cond_0
    return-object p0
.end method

.method public showLightnessSlider(Z)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->isLightnessSliderEnabled:Z

    .line 136
    return-object p0
.end method

.method public wheelType(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;
    .locals 2

    .prologue
    .line 79
    invoke-static {p1}, Lcom/flask/colorpicker/builder/ColorWheelRendererBuilder;->getRenderer(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->colorPickerView:Lcom/flask/colorpicker/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/flask/colorpicker/ColorPickerView;->setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V

    .line 81
    return-object p0
.end method
