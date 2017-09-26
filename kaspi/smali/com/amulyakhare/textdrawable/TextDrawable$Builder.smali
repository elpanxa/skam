.class public Lcom/amulyakhare/textdrawable/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
.implements Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
.implements Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amulyakhare/textdrawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderThickness:I

.field private color:I

.field private font:Landroid/graphics/Typeface;

.field private fontSize:I

.field private height:I

.field private isBold:Z

.field public radius:F

.field private shape:Landroid/graphics/drawable/shapes/RectShape;

.field private text:Ljava/lang/String;

.field public textColor:I

.field private toUpperCase:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 167
    const v0, -0x777778

    iput v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->color:I

    .line 168
    iput v1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->textColor:I

    .line 169
    iput v2, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->borderThickness:I

    .line 170
    iput v1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->width:I

    .line 171
    iput v1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->height:I

    .line 172
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 173
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 174
    iput v1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->fontSize:I

    .line 175
    iput-boolean v2, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->isBold:Z

    .line 176
    iput-boolean v2, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->toUpperCase:Z

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/amulyakhare/textdrawable/TextDrawable$1;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->height:I

    return v0
.end method

.method static synthetic access$200(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->width:I

    return v0
.end method

.method static synthetic access$300(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->toUpperCase:Z

    return v0
.end method

.method static synthetic access$400(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->color:I

    return v0
.end method

.method static synthetic access$600(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->fontSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->isBold:Z

    return v0
.end method

.method static synthetic access$800(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->borderThickness:I

    return v0
.end method


# virtual methods
.method public beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 221
    return-object p0
.end method

.method public bold()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->isBold:Z

    .line 211
    return-object p0
.end method

.method public build(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;
    .locals 2

    .prologue
    .line 269
    iput p2, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->color:I

    .line 270
    iput-object p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 271
    new-instance v0, Lcom/amulyakhare/textdrawable/TextDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amulyakhare/textdrawable/TextDrawable;-><init>(Lcom/amulyakhare/textdrawable/TextDrawable$Builder;Lcom/amulyakhare/textdrawable/TextDrawable$1;)V

    return-object v0
.end method

.method public buildRect(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->rect()Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->round()Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public buildRoundRect(Ljava/lang/String;II)Lcom/amulyakhare/textdrawable/TextDrawable;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p3}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->roundRect(I)Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public endConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;
    .locals 0

    .prologue
    .line 226
    return-object p0
.end method

.method public fontSize(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->fontSize:I

    .line 206
    return-object p0
.end method

.method public height(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->height:I

    .line 186
    return-object p0
.end method

.method public rect()Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 232
    return-object p0
.end method

.method public round()Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 238
    return-object p0
.end method

.method public roundRect(I)Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    int-to-float v0, p1

    iput v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->radius:F

    .line 244
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, p1

    aput v2, v0, v1

    .line 245
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 246
    return-object p0
.end method

.method public textColor(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->textColor:I

    .line 191
    return-object p0
.end method

.method public toUpperCase()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->toUpperCase:Z

    .line 216
    return-object p0
.end method

.method public useFont(Landroid/graphics/Typeface;)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 201
    return-object p0
.end method

.method public width(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->width:I

    .line 181
    return-object p0
.end method

.method public withBorder(I)Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 195
    iput p1, p0, Lcom/amulyakhare/textdrawable/TextDrawable$Builder;->borderThickness:I

    .line 196
    return-object p0
.end method
