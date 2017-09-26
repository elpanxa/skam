.class Lio/casper/android/activity/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$9;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$9;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->d(Lio/casper/android/activity/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$9;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->c(Lio/casper/android/activity/MainActivity;)Lcom/heinrichreimersoftware/materialdrawer/DrawerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$9;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/a;->f(Landroid/content/Context;)V

    .line 516
    return-void
.end method
