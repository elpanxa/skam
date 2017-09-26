.class Lio/casper/android/activity/ViewerActivity$1;
.super Ljava/lang/Object;
.source "ViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ViewerActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ViewerActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lio/casper/android/activity/ViewerActivity$1;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$1;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->a(Lio/casper/android/activity/ViewerActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$1;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->a(Lio/casper/android/activity/ViewerActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
