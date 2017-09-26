.class public Lcom/afollestad/materialdialogs/ThemeSingleton;
.super Ljava/lang/Object;
.source "ThemeSingleton.java"


# static fields
.field private static singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;


# instance fields
.field public backgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public btnSelectorNegative:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorNeutral:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorPositive:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnSelectorStacked:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public contentColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public darkTheme:Z

.field public dividerColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public itemColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public listSelector:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public negativeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public neutralColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public positiveColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public titleColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public widgetColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->darkTheme:Z

    .line 25
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->titleColor:I

    .line 27
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->contentColor:I

    .line 29
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->positiveColor:I

    .line 31
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->neutralColor:I

    .line 33
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->negativeColor:I

    .line 35
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->widgetColor:I

    .line 37
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->itemColor:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->backgroundColor:I

    .line 42
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->dividerColor:I

    .line 45
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->listSelector:I

    .line 47
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorStacked:I

    .line 49
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorPositive:I

    .line 51
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorNeutral:I

    .line 53
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorNegative:I

    .line 56
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 57
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 58
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 59
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 60
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method public static get()Lcom/afollestad/materialdialogs/ThemeSingleton;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/afollestad/materialdialogs/ThemeSingleton;->get(Z)Lcom/afollestad/materialdialogs/ThemeSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static get(Z)Lcom/afollestad/materialdialogs/ThemeSingleton;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/afollestad/materialdialogs/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 16
    new-instance v0, Lcom/afollestad/materialdialogs/ThemeSingleton;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/ThemeSingleton;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;

    .line 17
    :cond_0
    sget-object v0, Lcom/afollestad/materialdialogs/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;

    return-object v0
.end method
