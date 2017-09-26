.class Lio/casper/android/a/a/i$1;
.super Ljava/lang/Object;
.source "UsernameSavedSnapsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/i;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/casper/android/a/a/i;I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/casper/android/a/a/i$1;->this$0:Lio/casper/android/a/a/i;

    iput p2, p0, Lio/casper/android/a/a/i$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/a/i$1;->this$0:Lio/casper/android/a/a/i;

    iget-object v1, v1, Lio/casper/android/a/a/i;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/SwipeUsernameSavedSnapActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "display"

    iget-object v2, p0, Lio/casper/android/a/a/i$1;->this$0:Lio/casper/android/a/a/i;

    invoke-static {v2}, Lio/casper/android/a/a/i;->a(Lio/casper/android/a/a/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "position"

    iget v2, p0, Lio/casper/android/a/a/i$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "files"

    iget-object v2, p0, Lio/casper/android/a/a/i$1;->this$0:Lio/casper/android/a/a/i;

    invoke-virtual {v2}, Lio/casper/android/a/a/i;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lio/casper/android/a/a/i$1;->this$0:Lio/casper/android/a/a/i;

    iget-object v1, v1, Lio/casper/android/a/a/i;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
