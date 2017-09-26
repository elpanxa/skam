.class Lio/casper/android/a/a/g$4;
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
    .line 254
    iput-object p1, p0, Lio/casper/android/a/a/g$4;->this$0:Lio/casper/android/a/a/g;

    iput-object p2, p0, Lio/casper/android/a/a/g$4;->val$backgroundUpload:Lio/casper/android/e/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lio/casper/android/a/a/g$4;->val$backgroundUpload:Lio/casper/android/e/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/e/b/a;->a(I)V

    .line 259
    iget-object v0, p0, Lio/casper/android/a/a/g$4;->this$0:Lio/casper/android/a/a/g;

    invoke-static {v0}, Lio/casper/android/a/a/g;->b(Lio/casper/android/a/a/g;)Lio/casper/android/n/c/a/b;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/g$4;->val$backgroundUpload:Lio/casper/android/e/b/a;

    invoke-virtual {v0, v1}, Lio/casper/android/n/c/a/b;->c(Lio/casper/android/e/a/d;)J

    .line 260
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/a/g$4;->this$0:Lio/casper/android/a/a/g;

    iget-object v1, v1, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/service/BackgroundUploadIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    const-string v1, "id"

    iget-object v2, p0, Lio/casper/android/a/a/g$4;->val$backgroundUpload:Lio/casper/android/e/b/a;

    invoke-virtual {v2}, Lio/casper/android/e/b/a;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lio/casper/android/a/a/g$4;->this$0:Lio/casper/android/a/a/g;

    iget-object v1, v1, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 264
    return-void
.end method
