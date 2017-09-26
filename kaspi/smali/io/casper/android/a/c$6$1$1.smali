.class Lio/casper/android/a/c$6$1$1;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c$6$1;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/a/c$6$1;

.field final synthetic val$progress:J


# direct methods
.method constructor <init>(Lio/casper/android/a/c$6$1;J)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lio/casper/android/a/c$6$1$1;->this$2:Lio/casper/android/a/c$6$1;

    iput-wide p2, p0, Lio/casper/android/a/c$6$1$1;->val$progress:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lio/casper/android/a/c$6$1$1;->this$2:Lio/casper/android/a/c$6$1;

    iget-object v0, v0, Lio/casper/android/a/c$6$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-wide v2, p0, Lio/casper/android/a/c$6$1$1;->val$progress:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    .line 250
    return-void
.end method
