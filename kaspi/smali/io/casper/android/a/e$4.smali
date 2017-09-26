.class Lio/casper/android/a/e$4;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$story:Lio/casper/android/n/a/c/b/x;


# direct methods
.method constructor <init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lio/casper/android/a/e$4;->this$0:Lio/casper/android/a/e;

    iput-object p2, p0, Lio/casper/android/a/e$4;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lio/casper/android/a/e$4;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->f(Lio/casper/android/a/e;)Lio/casper/android/l/s;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$4;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x1

    return v0
.end method
