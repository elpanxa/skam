.class Lio/casper/android/a/a/h$7;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$story:Lio/casper/android/n/a/c/b/x;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lio/casper/android/a/a/h$7;->this$0:Lio/casper/android/a/a/h;

    iput-object p2, p0, Lio/casper/android/a/a/h$7;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lio/casper/android/a/a/h$7;->this$0:Lio/casper/android/a/a/h;

    invoke-static {v0}, Lio/casper/android/a/a/h;->b(Lio/casper/android/a/a/h;)Lio/casper/android/l/s;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/h$7;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/s;->g(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method
