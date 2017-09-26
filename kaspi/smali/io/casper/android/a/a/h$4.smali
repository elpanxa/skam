.class Lio/casper/android/a/a/h$4;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/h;

.field final synthetic val$holder:Lio/casper/android/a/c/g;

.field final synthetic val$myStories:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h;Lio/casper/android/a/c/g;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    iput-object p2, p0, Lio/casper/android/a/a/h$4;->val$holder:Lio/casper/android/a/c/g;

    iput-object p3, p0, Lio/casper/android/a/a/h$4;->val$myStories:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    iget-object v1, v1, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/a/a/h$4;->val$holder:Lio/casper/android/a/c/g;

    iget-object v2, v2, Lio/casper/android/a/c/g;->menuImage:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 154
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    new-instance v1, Lio/casper/android/a/a/h$4$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/a/h$4$1;-><init>(Lio/casper/android/a/a/h$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 211
    return-void
.end method
