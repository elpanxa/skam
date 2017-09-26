.class public Lcom/flask/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
    }
.end annotation


# static fields
.field private static final STROKE_RATIO:F = 2.0f


# instance fields
.field private alpha:F

.field private alphaPatternPaint:Landroid/graphics/Paint;

.field private alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

.field private alphaSliderViewId:I

.field private backgroundColor:I

.field private colorEdit:Landroid/widget/EditText;

.field private colorPreview:Landroid/widget/LinearLayout;

.field private colorSelection:I

.field private colorTextChange:Landroid/text/TextWatcher;

.field private colorWheel:Landroid/graphics/Bitmap;

.field private colorWheelCanvas:Landroid/graphics/Canvas;

.field private colorWheelFill:Landroid/graphics/Paint;

.field private currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

.field private density:I

.field private initialColor:Ljava/lang/Integer;

.field private initialColors:[Ljava/lang/Integer;

.field private lightness:F

.field private lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

.field private lightnessSliderViewId:I

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flask/colorpicker/OnColorSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

.field private selectorStroke1:Landroid/graphics/Paint;

.field private selectorStroke2:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 36
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 37
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 38
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 41
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 43
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 44
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 45
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 46
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/flask/colorpicker/ColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/flask/colorpicker/ColorPickerView$1;-><init>(Lcom/flask/colorpicker/ColorPickerView;)V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    .line 81
    invoke-direct {p0, p1, v2}, Lcom/flask/colorpicker/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 36
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 37
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 38
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 41
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 43
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 44
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 45
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 46
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/flask/colorpicker/ColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/flask/colorpicker/ColorPickerView$1;-><init>(Lcom/flask/colorpicker/ColorPickerView;)V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 36
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 37
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 38
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 41
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 43
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 44
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 45
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 46
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/flask/colorpicker/ColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/flask/colorpicker/ColorPickerView$1;-><init>(Lcom/flask/colorpicker/ColorPickerView;)V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 36
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 37
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 38
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 41
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 43
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 44
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 45
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 46
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/flask/colorpicker/ColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/flask/colorpicker/ColorPickerView$1;-><init>(Lcom/flask/colorpicker/ColorPickerView;)V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method private drawColorWheel()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 153
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 158
    const v1, 0x40033333    # 2.05f

    .line 159
    sub-float v2, v0, v1

    iget v3, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    .line 160
    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    div-float/2addr v2, v4

    .line 162
    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v3}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getRenderOption()Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    move-result-object v3

    .line 163
    iget v4, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    iput v4, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->density:I

    .line 164
    iput v0, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->maxRadius:F

    .line 165
    iput v2, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->cSize:F

    .line 166
    iput v1, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->strokeWidth:F

    .line 167
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    iput v0, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->alpha:F

    .line 168
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    iput v0, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->lightness:F

    .line 169
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    iput-object v0, v3, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    .line 171
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v0, v3}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->initWith(Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;)V

    .line 172
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v0}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->draw()V

    goto :goto_0
.end method

.method private findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;
    .locals 22

    .prologue
    .line 269
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 270
    move/from16 v0, p1

    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 271
    const/4 v3, 0x0

    .line 272
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 273
    const/4 v4, 0x1

    aget v4, v2, v4

    float-to-double v4, v4

    const/4 v8, 0x0

    aget v8, v2, v8

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    .line 274
    const/4 v4, 0x1

    aget v4, v2, v4

    float-to-double v4, v4

    const/4 v10, 0x0

    aget v2, v2, v10

    float-to-double v10, v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v2}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flask/colorpicker/ColorCircle;

    .line 277
    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getHsv()[F

    move-result-object v4

    .line 278
    const/4 v5, 0x1

    aget v5, v4, v5

    float-to-double v14, v5

    const/4 v5, 0x0

    aget v5, v4, v5

    float-to-double v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 279
    const/4 v5, 0x1

    aget v5, v4, v5

    float-to-double v0, v5

    move-wide/from16 v16, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v16

    .line 280
    sub-double v14, v8, v14

    .line 281
    sub-double v4, v10, v4

    .line 282
    mul-double/2addr v14, v14

    mul-double/2addr v4, v4

    add-double/2addr v4, v14

    .line 283
    cmpg-double v13, v4, v6

    if-gez v13, :cond_1

    move-wide/from16 v20, v4

    move-object v4, v2

    move-wide/from16 v2, v20

    :goto_1
    move-wide v6, v2

    move-object v3, v4

    .line 287
    goto :goto_0

    .line 289
    :cond_0
    return-object v3

    :cond_1
    move-object v4, v3

    move-wide v2, v6

    goto :goto_1
.end method

.method private findNearestByPosition(FF)Lcom/flask/colorpicker/ColorCircle;
    .locals 10

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 257
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v0}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/ColorCircle;

    .line 258
    invoke-virtual {v0, p1, p2}, Lcom/flask/colorpicker/ColorCircle;->sqDist(FF)D

    move-result-wide v2

    .line 259
    cmpl-double v7, v4, v2

    if-lez v7, :cond_1

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    move-wide v4, v0

    move-object v1, v2

    .line 263
    goto :goto_0

    .line 265
    :cond_0
    return-object v1

    :cond_1
    move-object v2, v1

    move-wide v0, v4

    goto :goto_1
.end method

.method private initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    sget-object v0, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    sget v1, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_density:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 104
    sget v1, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_initialColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 105
    sget v1, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_wheelType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->indexOf(I)Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/flask/colorpicker/builder/ColorWheelRendererBuilder;->getRenderer(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    move-result-object v1

    .line 108
    sget v2, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_alphaSliderView:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSliderViewId:I

    .line 109
    sget v2, Lcom/flask/colorpicker/R$styleable;->ColorPickerPreference_lightnessSliderView:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSliderViewId:I

    .line 111
    invoke-virtual {p0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V

    .line 112
    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    invoke-virtual {p0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setDensity(I)V

    .line 113
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(IZ)V

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

.method private setColorPreviewColor(I)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 463
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 467
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 469
    check-cast v0, Landroid/widget/LinearLayout;

    .line 470
    sget v1, Lcom/flask/colorpicker/R$id;->image_preview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 471
    new-instance v1, Lcom/flask/colorpicker/CircleColorDrawable;

    invoke-direct {v1, p1}, Lcom/flask/colorpicker/CircleColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setColorText(I)V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setColorToSliders(I)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/slider/LightnessSlider;->setColor(I)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {v0, p1}, Lcom/flask/colorpicker/slider/AlphaSlider;->setColor(I)V

    .line 485
    :cond_1
    return-void
.end method

.method private setHighlightedColor(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 442
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 445
    :goto_0
    if-ge v1, v3, :cond_0

    .line 446
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    .line 445
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 449
    :cond_2
    check-cast v0, Landroid/widget/LinearLayout;

    .line 450
    if-ne v1, p1, :cond_3

    .line 451
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 453
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private updateColorWheel()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getMeasuredWidth()I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getMeasuredHeight()I

    move-result v0

    .line 139
    if-ge v0, v1, :cond_2

    .line 141
    :goto_0
    if-gtz v0, :cond_0

    .line 150
    :goto_1
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 144
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    .line 145
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelCanvas:Landroid/graphics/Canvas;

    .line 146
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->drawColorWheel()V

    .line 149
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public getAllColors()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    if-eqz v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 296
    :cond_0
    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    invoke-static {v1, v0}, Lcom/flask/colorpicker/Utils;->adjustAlpha(FI)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 123
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSliderViewId:I

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSliderViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerView;->setAlphaSlider(Lcom/flask/colorpicker/slider/AlphaSlider;)V

    .line 125
    :cond_0
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSliderViewId:I

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSliderViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerView;->setLightnessSlider(Lcom/flask/colorpicker/slider/LightnessSlider;)V

    .line 127
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 236
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 237
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 238
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheel:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const v1, 0x40033333    # 2.05f

    sub-float/2addr v0, v1

    .line 242
    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, v4

    .line 243
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget v3, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    invoke-virtual {v2, v3}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 245
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v1}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v2

    mul-float v3, v0, v4

    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 246
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v1}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 248
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v1}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v1}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 251
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 177
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 180
    if-nez v2, :cond_2

    move v0, p1

    .line 187
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 189
    if-nez v3, :cond_4

    move v1, p1

    .line 196
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    move v0, v1

    .line 198
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/flask/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 199
    return-void

    .line 182
    :cond_2
    if-ne v2, v4, :cond_3

    .line 183
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_3
    if-ne v2, v5, :cond_6

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 191
    :cond_4
    if-ne v3, v4, :cond_5

    .line 192
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    .line 193
    :cond_5
    if-ne v2, v5, :cond_0

    .line 194
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 206
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByPosition(FF)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 207
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 209
    invoke-direct {p0, v0}, Lcom/flask/colorpicker/ColorPickerView;->setColorToSliders(I)V

    .line 210
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v1

    .line 215
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/OnColorSelectedListener;

    .line 218
    :try_start_0
    invoke-interface {v0, v1}, Lcom/flask/colorpicker/OnColorSelectedListener;->onColorSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    goto :goto_1

    .line 224
    :cond_0
    invoke-direct {p0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setColorToSliders(I)V

    .line 225
    invoke-direct {p0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setColorText(I)V

    .line 226
    invoke-direct {p0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setColorPreviewColor(I)V

    .line 227
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 132
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 133
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 134
    return-void
.end method

.method public setAlphaSlider(Lcom/flask/colorpicker/slider/AlphaSlider;)V
    .locals 2

    .prologue
    .line 368
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    .line 369
    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {v0, p0}, Lcom/flask/colorpicker/slider/AlphaSlider;->setColorPicker(Lcom/flask/colorpicker/ColorPickerView;)V

    .line 371
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/slider/AlphaSlider;->setColor(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public setAlphaValue(F)V
    .locals 3

    .prologue
    .line 345
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 346
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    invoke-static {v0}, Lcom/flask/colorpicker/Utils;->alphaValueAsInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    invoke-virtual {v1, v2}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 347
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

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

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/slider/LightnessSlider;->setColor(I)V

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 352
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 353
    return-void
.end method

.method public setColor(IZ)V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(IZ)V

    .line 340
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 341
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 342
    return-void
.end method

.method public setColorEdit(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 376
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    .line 377
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorTextChange:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 382
    :cond_0
    return-void
.end method

.method public setColorPreview(Landroid/widget/LinearLayout;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 395
    if-nez p1, :cond_1

    .line 427
    :cond_0
    return-void

    .line 397
    :cond_1
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    .line 398
    if-nez p2, :cond_2

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 400
    :cond_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 401
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 404
    :goto_0
    if-ge v1, v2, :cond_0

    .line 405
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 406
    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-nez v3, :cond_3

    .line 404
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 408
    :cond_3
    check-cast v0, Landroid/widget/LinearLayout;

    .line 409
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 410
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 412
    :cond_4
    sget v3, Lcom/flask/colorpicker/R$id;->image_preview:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 413
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 415
    new-instance v3, Lcom/flask/colorpicker/ColorPickerView$2;

    invoke-direct {v3, p0}, Lcom/flask/colorpicker/ColorPickerView$2;-><init>(Lcom/flask/colorpicker/ColorPickerView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setDensity(I)V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 386
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 387
    return-void
.end method

.method public setInitialColor(IZ)V
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 313
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 315
    invoke-static {p1}, Lcom/flask/colorpicker/Utils;->getAlphaPercent(I)F

    move-result v1

    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 316
    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 317
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 319
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setColorPreviewColor(I)V

    .line 320
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setColorToSliders(I)V

    .line 321
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setColorText(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v0}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 325
    :cond_1
    return-void
.end method

.method public setInitialColors([Ljava/lang/Integer;I)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 305
    iput p2, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 306
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    aget-object v0, v0, v1

    .line 307
    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 308
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(IZ)V

    .line 309
    return-void
.end method

.method public setLightness(F)V
    .locals 3

    .prologue
    .line 328
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 329
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    invoke-static {v0}, Lcom/flask/colorpicker/Utils;->alphaValueAsInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v1, p1}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 330
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorEdit:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

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

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSlider:Lcom/flask/colorpicker/slider/AlphaSlider;

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/slider/AlphaSlider;->setColor(I)V

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 335
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 336
    return-void
.end method

.method public setLightnessSlider(Lcom/flask/colorpicker/slider/LightnessSlider;)V
    .locals 2

    .prologue
    .line 360
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    .line 361
    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {v0, p0}, Lcom/flask/colorpicker/slider/LightnessSlider;->setColorPicker(Lcom/flask/colorpicker/ColorPickerView;)V

    .line 363
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSlider:Lcom/flask/colorpicker/slider/LightnessSlider;

    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/slider/LightnessSlider;->setColor(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    .line 391
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 392
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 433
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setHighlightedColor(I)V

    .line 434
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    .line 435
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setColor(IZ)V

    goto :goto_0
.end method
