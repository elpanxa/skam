.class public Lcom/flask/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"


# instance fields
.field protected alphaSlider:Z

.field protected colorIndicator:Landroid/widget/ImageView;

.field protected density:I

.field protected lightSlider:Z

.field private pickerButtonCancel:Ljava/lang/String;

.field private pickerButtonOk:Ljava/lang/String;

.field private pickerTitle:Ljava/lang/String;

.field protected selectedColor:I

.field protected wheelType:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerPreference;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerPreference;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public static darken(IF)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 158
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 159
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 160
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 162
    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 56
    :try_start_0
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_alphaSlider:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->alphaSlider:Z

    .line 57
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_lightnessSlider:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->lightSlider:Z

    .line 59
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_density:I

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->density:I

    .line 60
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_wheelType:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->indexOf(I)Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->wheelType:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    .line 62
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_initialColor:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    .line 64
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_pickerTitle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerTitle:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Choose color"

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerTitle:Ljava/lang/String;

    .line 68
    :cond_0
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_pickerButtonCancel:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonCancel:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonCancel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 70
    const-string v0, "cancel"

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonCancel:Ljava/lang/String;

    .line 72
    :cond_1
    sget v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_pickerButtonOk:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonOk:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonOk:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 74
    const-string v0, "ok"

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonOk:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    sget v0, Lcom/flask/colorpicker/R$layout;->color_widget:I

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerPreference;->setWidgetLayoutResource(I)V

    .line 81
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    const/4 v1, 0x0

    .line 91
    sget v0, Lcom/flask/colorpicker/R$id;->color_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->colorIndicator:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerPreference;->colorIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    .line 95
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 97
    :goto_0
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 99
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    .line 106
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 107
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v3}, Lcom/flask/colorpicker/ColorPickerPreference;->darken(IF)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 113
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->colorIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void

    .line 102
    :cond_1
    iget v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v3}, Lcom/flask/colorpicker/ColorPickerPreference;->darken(IF)I

    move-result v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->with(Landroid/content/Context;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->initialColor(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->wheelType:Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->wheelType(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->density:I

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->density(I)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonOk:Ljava/lang/String;

    new-instance v2, Lcom/flask/colorpicker/ColorPickerPreference$1;

    invoke-direct {v2, p0}, Lcom/flask/colorpicker/ColorPickerPreference$1;-><init>(Lcom/flask/colorpicker/ColorPickerPreference;)V

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Lcom/flask/colorpicker/builder/ColorPickerClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->pickerButtonCancel:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    move-result-object v0

    .line 146
    iget-boolean v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->alphaSlider:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->lightSlider:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->noSliders()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->build()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 154
    return-void

    .line 147
    :cond_1
    iget-boolean v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->alphaSlider:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->lightnessSliderOnly()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    goto :goto_0

    .line 148
    :cond_2
    iget-boolean v1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->lightSlider:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;->alphaSliderOnly()Lcom/flask/colorpicker/builder/ColorPickerDialogBuilder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 126
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerPreference;->setValue(I)V

    .line 127
    return-void

    .line 126
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerPreference;->selectedColor:I

    .line 119
    invoke-virtual {p0, p1}, Lcom/flask/colorpicker/ColorPickerPreference;->persistInt(I)Z

    .line 120
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerPreference;->notifyChanged()V

    .line 122
    :cond_0
    return-void
.end method
