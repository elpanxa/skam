.class Lio/casper/android/a/a/e$1;
.super Ljava/lang/Object;
.source "SavedSnapsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/e;

.field final synthetic val$display:Ljava/lang/String;

.field final synthetic val$pair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/e;Landroid/util/Pair;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lio/casper/android/a/a/e$1;->this$0:Lio/casper/android/a/a/e;

    iput-object p2, p0, Lio/casper/android/a/a/e$1;->val$pair:Landroid/util/Pair;

    iput-object p3, p0, Lio/casper/android/a/a/e$1;->val$display:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lio/casper/android/a/a/e$1;->this$0:Lio/casper/android/a/a/e;

    iget-object v0, v0, Lio/casper/android/a/a/e;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/UsernameSavedSnapsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v2, "username"

    iget-object v0, p0, Lio/casper/android/a/a/e$1;->val$pair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v0, "display"

    iget-object v2, p0, Lio/casper/android/a/a/e$1;->val$display:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lio/casper/android/a/a/e$1;->this$0:Lio/casper/android/a/a/e;

    iget-object v0, v0, Lio/casper/android/a/a/e;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
