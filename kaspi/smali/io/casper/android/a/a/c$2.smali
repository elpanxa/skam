.class Lio/casper/android/a/a/c$2;
.super Ljava/lang/Object;
.source "FriendChooserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/c;

.field final synthetic val$viewHolder:Lio/casper/android/a/c/b;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/c;Lio/casper/android/a/c/b;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lio/casper/android/a/a/c$2;->this$0:Lio/casper/android/a/a/c;

    iput-object p2, p0, Lio/casper/android/a/a/c$2;->val$viewHolder:Lio/casper/android/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lio/casper/android/a/a/c$2;->val$viewHolder:Lio/casper/android/a/c/b;

    iget-object v0, v0, Lio/casper/android/a/c/b;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 119
    return-void
.end method
