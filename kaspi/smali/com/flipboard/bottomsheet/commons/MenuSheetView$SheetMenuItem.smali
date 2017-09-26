.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
.super Ljava/lang/Object;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SheetMenuItem"
.end annotation


# static fields
.field private static final SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;


# instance fields
.field private final menuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;-><init>(Landroid/view/MenuItem;)V

    sput-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    return-void
.end method

.method private constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->menuItem:Landroid/view/MenuItem;

    .line 375
    return-void
.end method

.method static synthetic access$100()Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    return-object v0
.end method

.method public static of(Landroid/view/MenuItem;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method


# virtual methods
.method public getMenuItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->menuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->menuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->menuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeparator()Z
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;->SEPARATOR:Lcom/flipboard/bottomsheet/commons/MenuSheetView$SheetMenuItem;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
