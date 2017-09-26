.class public Lit/neokree/materialtabs/MaterialTab;
.super Ljava/lang/Object;
.source "MaterialTab.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams",
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field private static final HIDE_DURATION:I = 0x1f4

.field private static final REVEAL_DURATION:I = 0x190


# instance fields
.field private accentColor:I

.field private active:Z

.field private background:Lat/markushi/ui/RevealColorView;

.field private completeView:Landroid/view/View;

.field private density:F

.field private hasIcon:Z

.field private icon:Landroid/widget/ImageView;

.field private iconColor:I

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private lastTouchedPoint:Landroid/graphics/Point;

.field private listener:Lit/neokree/materialtabs/MaterialTabListener;

.field private position:I

.field private primaryColor:I

.field private res:Landroid/content/res/Resources;

.field private selector:Landroid/widget/ImageView;

.field private text:Landroid/widget/TextView;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p2, p0, Lit/neokree/materialtabs/MaterialTab;->hasIcon:Z

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lit/neokree/materialtabs/MaterialTab;->density:F

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->res:Landroid/content/res/Resources;

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 60
    if-nez p2, :cond_0

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lit/neokree/materialtabs/R$layout;->tab:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    .line 71
    :goto_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->selector:Landroid/widget/ImageView;

    .line 91
    :goto_1
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->active:Z

    .line 94
    iput v3, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    .line 95
    iput v3, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    .line 96
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lit/neokree/materialtabs/R$layout;->tab_icon:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    goto :goto_0

    .line 74
    :cond_1
    if-nez p2, :cond_2

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lit/neokree/materialtabs/R$layout;->material_tab:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    .line 86
    :goto_2
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->reveal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lat/markushi/ui/RevealColorView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->background:Lat/markushi/ui/RevealColorView;

    .line 87
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->selector:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->selector:Landroid/widget/ImageView;

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lit/neokree/materialtabs/R$layout;->material_tab_icon:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    sget v1, Lit/neokree/materialtabs/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    goto :goto_2
.end method

.method static synthetic access$000(Lit/neokree/materialtabs/MaterialTab;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lit/neokree/materialtabs/MaterialTab;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lit/neokree/materialtabs/MaterialTab;->primaryColor:I

    return v0
.end method

.method static synthetic access$200(Lit/neokree/materialtabs/MaterialTab;)Lat/markushi/ui/RevealColorView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->background:Lat/markushi/ui/RevealColorView;

    return-object v0
.end method

.method private deviceHaveRippleSupport()Z
    .locals 2

    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getIconWidth()I
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lit/neokree/materialtabs/MaterialTab;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getTextLenght()I
    .locals 5

    .prologue
    .line 291
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 293
    iget-object v2, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 294
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private setIconAlpha(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method


# virtual methods
.method public activateTab()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    iget v1, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 173
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lit/neokree/materialtabs/MaterialTab;->setIconAlpha(I)V

    .line 176
    :cond_1
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->selector:Landroid/widget/ImageView;

    iget v1, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->active:Z

    .line 179
    return-void
.end method

.method public disableTab()V
    .locals 5

    .prologue
    const/16 v4, 0x99

    .line 152
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    iget v1, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0, v4}, Lit/neokree/materialtabs/MaterialTab;->setIconAlpha(I)V

    .line 159
    :cond_1
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->selector:Landroid/widget/ImageView;

    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->res:Landroid/content/res/Resources;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->active:Z

    .line 163
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    invoke-interface {v0, p0}, Lit/neokree/materialtabs/MaterialTabListener;->onTabUnselected(Lit/neokree/materialtabs/MaterialTab;)V

    .line 165
    :cond_2
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lit/neokree/materialtabs/MaterialTab;->position:I

    return v0
.end method

.method public getTabListener()Lit/neokree/materialtabs/MaterialTabListener;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    return-object v0
.end method

.method public getTabMinWidth()I
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->hasIcon:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lit/neokree/materialtabs/MaterialTab;->getIconWidth()I

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lit/neokree/materialtabs/MaterialTab;->getTextLenght()I

    move-result v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->active:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/16 v8, 0x80

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 187
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    .line 188
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 189
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 192
    invoke-direct {p0}, Lit/neokree/materialtabs/MaterialTab;->deviceHaveRippleSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    iget v2, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    move v5, v0

    .line 253
    :cond_1
    :goto_0
    return v5

    .line 200
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 201
    invoke-direct {p0}, Lit/neokree/materialtabs/MaterialTab;->deviceHaveRippleSupport()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    iget v2, p0, Lit/neokree/materialtabs/MaterialTab;->primaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    move v5, v0

    .line 204
    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 210
    invoke-direct {p0}, Lit/neokree/materialtabs/MaterialTab;->deviceHaveRippleSupport()Z

    move-result v1

    if-nez v1, :cond_7

    .line 211
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    iget v2, p0, Lit/neokree/materialtabs/MaterialTab;->primaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    :goto_1
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    if-eqz v1, :cond_5

    .line 238
    iget-boolean v1, p0, Lit/neokree/materialtabs/MaterialTab;->active:Z

    if-eqz v1, :cond_8

    .line 240
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    invoke-interface {v1, p0}, Lit/neokree/materialtabs/MaterialTabListener;->onTabReselected(Lit/neokree/materialtabs/MaterialTab;)V

    .line 247
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lit/neokree/materialtabs/MaterialTab;->active:Z

    if-nez v1, :cond_6

    .line 248
    invoke-virtual {p0}, Lit/neokree/materialtabs/MaterialTab;->activateTab()V

    :cond_6
    move v5, v0

    .line 250
    goto :goto_0

    .line 215
    :cond_7
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->background:Lat/markushi/ui/RevealColorView;

    iget-object v2, p0, Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v6, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v8, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const-wide/16 v6, 0x190

    new-instance v8, Lit/neokree/materialtabs/MaterialTab$1;

    invoke-direct {v8, p0}, Lit/neokree/materialtabs/MaterialTab$1;-><init>(Lit/neokree/materialtabs/MaterialTab;)V

    invoke-virtual/range {v1 .. v8}, Lat/markushi/ui/RevealColorView;->reveal(IIIIJLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 243
    :cond_8
    iget-object v1, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    invoke-interface {v1, p0}, Lit/neokree/materialtabs/MaterialTabListener;->onTabSelected(Lit/neokree/materialtabs/MaterialTab;)V

    goto :goto_2
.end method

.method public setAccentColor(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->accentColor:I

    .line 101
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    .line 102
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    .line 103
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lit/neokree/materialtabs/MaterialTab;
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->hasIcon:Z

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You had setted tabs without icons, uses text instead icons"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Lit/neokree/materialtabs/MaterialTab;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget v0, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    invoke-virtual {p0, v0}, Lit/neokree/materialtabs/MaterialTab;->setIconColor(I)V

    .line 147
    return-object p0
.end method

.method public setIconColor(I)V
    .locals 1

    .prologue
    .line 126
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->iconColor:I

    .line 127
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->position:I

    .line 277
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1

    .prologue
    .line 106
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->primaryColor:I

    .line 108
    invoke-direct {p0}, Lit/neokree/materialtabs/MaterialTab;->deviceHaveRippleSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->background:Lat/markushi/ui/RevealColorView;

    invoke-virtual {v0, p1}, Lat/markushi/ui/RevealColorView;->setBackgroundColor(I)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->completeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTabListener(Lit/neokree/materialtabs/MaterialTabListener;)Lit/neokree/materialtabs/MaterialTab;
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lit/neokree/materialtabs/MaterialTab;->listener:Lit/neokree/materialtabs/MaterialTabListener;

    .line 262
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lit/neokree/materialtabs/MaterialTab;
    .locals 3

    .prologue
    .line 132
    iget-boolean v0, p0, Lit/neokree/materialtabs/MaterialTab;->hasIcon:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You had setted tabs with icons, uses icons instead text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-object p0
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 118
    iput p1, p0, Lit/neokree/materialtabs/MaterialTab;->textColor:I

    .line 119
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :cond_0
    return-void
.end method
