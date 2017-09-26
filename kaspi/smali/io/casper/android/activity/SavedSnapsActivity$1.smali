.class Lio/casper/android/activity/SavedSnapsActivity$1;
.super Ljava/lang/Object;
.source "SavedSnapsActivity.java"

# interfaces
.implements Lio/casper/android/o/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SavedSnapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SavedSnapsActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SavedSnapsActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lio/casper/android/activity/SavedSnapsActivity$1;->this$0:Lio/casper/android/activity/SavedSnapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity$1;->this$0:Lio/casper/android/activity/SavedSnapsActivity;

    invoke-static {v0}, Lio/casper/android/activity/SavedSnapsActivity;->a(Lio/casper/android/activity/SavedSnapsActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 65
    iget-object v2, p0, Lio/casper/android/activity/SavedSnapsActivity$1;->this$0:Lio/casper/android/activity/SavedSnapsActivity;

    invoke-static {v2}, Lio/casper/android/activity/SavedSnapsActivity;->b(Lio/casper/android/activity/SavedSnapsActivity;)Lio/casper/android/a/a/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/casper/android/a/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
