.class public Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
.super Ljava/lang/Object;
.source "DrawerTheme.java"


# instance fields
.field private backgroundColor:I

.field private final context:Landroid/content/Context;

.field private highlightColor:I

.field private statusBarBackgroundColor:I

.field private textColorPrimary:I

.field private textColorPrimaryInverse:I

.field private textColorSecondary:I

.field private textColorSecondaryInverse:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [I

    const v1, 0x1010054

    aput v1, v0, v3

    const v1, 0x1010036

    aput v1, v0, v4

    const v1, 0x1010038

    aput v1, v0, v5

    const v1, 0x1010039

    aput v1, v0, v6

    const v1, 0x101003a

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$attr;->colorAccent:I

    aput v2, v0, v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->backgroundColor:I

    .line 87
    sget v1, Lcom/heinrichreimersoftware/materialdrawer/R$color;->md_inset_foreground:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->statusBarBackgroundColor:I

    .line 88
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimary:I

    .line 89
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondary:I

    .line 90
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimaryInverse:I

    .line 91
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondaryInverse:I

    .line 92
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->highlightColor:I

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;)V
    .locals 1
    .param p1    # Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-object v0, p1, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->backgroundColor:I

    .line 73
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorPrimary()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimary:I

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->statusBarBackgroundColor:I

    .line 74
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorSecondary()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondary:I

    .line 75
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorPrimaryInverse()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimaryInverse:I

    .line 76
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getTextColorSecondaryInverse()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondaryInverse:I

    .line 77
    invoke-virtual {p1}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->getHighlightColor()I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->highlightColor:I

    .line 78
    return-void
.end method

.method private isLightColor(I)Z
    .locals 8

    .prologue
    .line 102
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->backgroundColor:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->highlightColor:I

    return v0
.end method

.method public getStatusBarBackgroundColor()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->statusBarBackgroundColor:I

    return v0
.end method

.method public getTextColorPrimary()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimary:I

    return v0
.end method

.method public getTextColorPrimaryInverse()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimaryInverse:I

    return v0
.end method

.method public getTextColorSecondary()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondary:I

    return v0
.end method

.method public getTextColorSecondaryInverse()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondaryInverse:I

    return v0
.end method

.method public isLightTheme()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->backgroundColor:I

    invoke-direct {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->isLightColor(I)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->backgroundColor:I

    .line 116
    return-object p0
.end method

.method public setBackgroundColorRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->backgroundColor:I

    .line 107
    return-object p0
.end method

.method public setHighlightColor(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->highlightColor:I

    .line 200
    return-object p0
.end method

.method public setHighlightColorRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 190
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->highlightColor:I

    .line 191
    return-object p0
.end method

.method public setStatusBarBackgroundColor(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->statusBarBackgroundColor:I

    .line 130
    return-object p0
.end method

.method public setStatusBarBackgroundColorRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->statusBarBackgroundColor:I

    .line 121
    return-object p0
.end method

.method public setTextColorPrimary(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimary:I

    .line 144
    return-object p0
.end method

.method public setTextColorPrimaryInverse(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimaryInverse:I

    .line 172
    return-object p0
.end method

.method public setTextColorPrimaryInverseRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 162
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimaryInverse:I

    .line 163
    return-object p0
.end method

.method public setTextColorPrimaryRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorPrimary:I

    .line 135
    return-object p0
.end method

.method public setTextColorSecondary(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondary:I

    .line 158
    return-object p0
.end method

.method public setTextColorSecondaryInverse(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondaryInverse:I

    .line 186
    return-object p0
.end method

.method public setTextColorSecondaryInverseRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 176
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondaryInverse:I

    .line 177
    return-object p0
.end method

.method public setTextColorSecondaryRes(I)Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/theme/DrawerTheme;->textColorSecondary:I

    .line 149
    return-object p0
.end method
