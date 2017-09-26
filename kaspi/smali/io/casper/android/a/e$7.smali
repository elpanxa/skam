.class Lio/casper/android/a/e$7;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e;->a(Lio/casper/android/a/e$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/e;

.field final synthetic val$holder:Lio/casper/android/a/e$a;

.field final synthetic val$myStory:Lio/casper/android/n/a/c/b/t;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/casper/android/a/e;Lio/casper/android/a/e$a;Lio/casper/android/n/a/c/b/t;I)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    iput-object p2, p0, Lio/casper/android/a/e$7;->val$holder:Lio/casper/android/a/e$a;

    iput-object p3, p0, Lio/casper/android/a/e$7;->val$myStory:Lio/casper/android/n/a/c/b/t;

    iput p4, p0, Lio/casper/android/a/e$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/e$7;->val$holder:Lio/casper/android/a/e$a;

    invoke-static {v2}, Lio/casper/android/a/e$a;->a(Lio/casper/android/a/e$a;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 152
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    new-instance v1, Lio/casper/android/a/e$7$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/e$7$1;-><init>(Lio/casper/android/a/e$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 220
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 222
    return-void
.end method
