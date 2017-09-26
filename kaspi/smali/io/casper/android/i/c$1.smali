.class Lio/casper/android/i/c$1;
.super Ljava/lang/Object;
.source "EmojiPickerFragment.java"

# interfaces
.implements Lit/neokree/materialtabs/MaterialTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/c;


# direct methods
.method constructor <init>(Lio/casper/android/i/c;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lio/casper/android/i/c$1;->this$0:Lio/casper/android/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lit/neokree/materialtabs/MaterialTab;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onTabSelected(Lit/neokree/materialtabs/MaterialTab;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lio/casper/android/i/c$1;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->a(Lio/casper/android/i/c;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Lit/neokree/materialtabs/MaterialTab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 76
    return-void
.end method

.method public onTabUnselected(Lit/neokree/materialtabs/MaterialTab;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
