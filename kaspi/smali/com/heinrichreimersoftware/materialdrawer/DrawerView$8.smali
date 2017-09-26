.class Lcom/heinrichreimersoftware/materialdrawer/DrawerView$8;
.super Ljava/lang/Object;
.source "DrawerView.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->updateProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$8;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$8;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerView$8;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    # getter for: Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->textViewProfileAvatarCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/heinrichreimersoftware/materialdrawer/DrawerView;->access$700(Lcom/heinrichreimersoftware/materialdrawer/DrawerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 365
    :cond_0
    return-void
.end method
