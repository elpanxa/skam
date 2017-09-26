.class Lio/casper/android/a/a/g$2;
.super Ljava/lang/Object;
.source "SnapsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/g;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lio/casper/android/a/a/g$2;->this$0:Lio/casper/android/a/a/g;

    iput-object p2, p0, Lio/casper/android/a/a/g$2;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lio/casper/android/a/a/g$2;->this$0:Lio/casper/android/a/a/g;

    invoke-static {v0}, Lio/casper/android/a/a/g;->a(Lio/casper/android/a/a/g;)Lio/casper/android/l/s;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/g$2;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/s;->g(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
