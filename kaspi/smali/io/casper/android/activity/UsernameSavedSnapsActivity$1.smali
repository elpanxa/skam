.class Lio/casper/android/activity/UsernameSavedSnapsActivity$1;
.super Ljava/lang/Object;
.source "UsernameSavedSnapsActivity.java"

# interfaces
.implements Lio/casper/android/o/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/UsernameSavedSnapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/UsernameSavedSnapsActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/UsernameSavedSnapsActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity$1;->this$0:Lio/casper/android/activity/UsernameSavedSnapsActivity;

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
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity$1;->this$0:Lio/casper/android/activity/UsernameSavedSnapsActivity;

    invoke-static {v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->a(Lio/casper/android/activity/UsernameSavedSnapsActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 79
    iget-object v2, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity$1;->this$0:Lio/casper/android/activity/UsernameSavedSnapsActivity;

    invoke-static {v2}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->b(Lio/casper/android/activity/UsernameSavedSnapsActivity;)Lio/casper/android/a/a/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/casper/android/a/a/i;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method
