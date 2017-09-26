.class Lio/casper/android/a/a/d$3;
.super Ljava/lang/Object;
.source "FriendsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/d;

.field final synthetic val$popup:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/d;Landroid/support/v7/widget/PopupMenu;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lio/casper/android/a/a/d$3;->this$0:Lio/casper/android/a/a/d;

    iput-object p2, p0, Lio/casper/android/a/a/d$3;->val$popup:Landroid/support/v7/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lio/casper/android/a/a/d$3;->val$popup:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 276
    return-void
.end method
