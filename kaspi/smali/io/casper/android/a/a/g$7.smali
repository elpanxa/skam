.class Lio/casper/android/a/a/g$7;
.super Ljava/lang/Object;
.source "SnapsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$backgroundUpload:Lio/casper/android/e/b/a;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/g;Lio/casper/android/e/b/a;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lio/casper/android/a/a/g$7;->this$0:Lio/casper/android/a/a/g;

    iput-object p2, p0, Lio/casper/android/a/a/g$7;->val$backgroundUpload:Lio/casper/android/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lio/casper/android/a/a/g$7;->this$0:Lio/casper/android/a/a/g;

    invoke-static {v0}, Lio/casper/android/a/a/g;->b(Lio/casper/android/a/a/g;)Lio/casper/android/n/c/a/b;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/g$7;->val$backgroundUpload:Lio/casper/android/e/b/a;

    invoke-virtual {v0, v1}, Lio/casper/android/n/c/a/b;->d(Lio/casper/android/e/a/d;)V

    .line 317
    iget-object v0, p0, Lio/casper/android/a/a/g$7;->this$0:Lio/casper/android/a/a/g;

    iget-object v0, v0, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.casper.android.INTENT_BACKGROUND_UPLOAD_STATE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return-void
.end method
