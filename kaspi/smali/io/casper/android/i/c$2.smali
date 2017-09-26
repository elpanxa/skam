.class Lio/casper/android/i/c$2;
.super Ljava/lang/Object;
.source "EmojiPickerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    .line 96
    iput-object p1, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->b(Lio/casper/android/i/c;)Lit/neokree/materialtabs/MaterialTabHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lit/neokree/materialtabs/MaterialTabHost;->setSelectedNavigationItem(I)V

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f07019d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f07019c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f070199

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f070197

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 130
    :pswitch_5
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f07019f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 134
    :pswitch_6
    iget-object v0, p0, Lio/casper/android/i/c$2;->this$0:Lio/casper/android/i/c;

    invoke-static {v0}, Lio/casper/android/i/c;->c(Lio/casper/android/i/c;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f07019e

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
