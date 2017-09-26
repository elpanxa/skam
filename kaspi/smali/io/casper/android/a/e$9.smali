.class Lio/casper/android/a/e$9;
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

.field final synthetic val$story:Lio/casper/android/n/a/c/b/x;


# direct methods
.method constructor <init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lio/casper/android/a/e$9;->this$0:Lio/casper/android/a/e;

    iput-object p2, p0, Lio/casper/android/a/e$9;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lio/casper/android/a/e$9;->this$0:Lio/casper/android/a/e;

    iget-object v1, p0, Lio/casper/android/a/e$9;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v1}, Lio/casper/android/a/e;->a(Lio/casper/android/n/a/c/b/x;)V

    .line 281
    return-void
.end method
