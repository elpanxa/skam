.class Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "DrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6

    .prologue
    .line 84
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$1;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$1;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->invalidateOptionsMenu()V

    .line 87
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity$1;->this$0:Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;

    invoke-virtual {v0}, Lcom/heinrichreimersoftware/materialdrawer/DrawerActivity;->invalidateOptionsMenu()V

    .line 91
    return-void
.end method
