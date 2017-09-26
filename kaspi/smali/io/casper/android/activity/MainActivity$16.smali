.class Lio/casper/android/activity/MainActivity$16;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MainActivity.java"


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
    .line 672
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$16;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$16;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0, p1}, Lio/casper/android/activity/MainActivity;->a(Lio/casper/android/activity/MainActivity;I)I

    .line 677
    packed-switch p1, :pswitch_data_0

    .line 705
    :goto_0
    return-void

    .line 681
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$16;->this$0:Lio/casper/android/activity/MainActivity;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$16;->this$0:Lio/casper/android/activity/MainActivity;

    const v1, 0x7f0701f9

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 694
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$16;->this$0:Lio/casper/android/activity/MainActivity;

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 699
    :pswitch_3
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$16;->this$0:Lio/casper/android/activity/MainActivity;

    const v1, 0x7f0701ae

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->setTitle(I)V

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
