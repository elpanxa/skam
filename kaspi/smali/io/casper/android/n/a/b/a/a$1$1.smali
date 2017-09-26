.class Lio/casper/android/n/a/b/a/a$1$1;
.super Ljava/lang/Object;
.source "SnapchatRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/a/b/a/a$1;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/n/a/b/a/a$1;


# direct methods
.method constructor <init>(Lio/casper/android/n/a/b/a/a$1;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lio/casper/android/n/a/b/a/a$1$1;->this$1:Lio/casper/android/n/a/b/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1$1;->this$1:Lio/casper/android/n/a/b/a/a$1;

    iget-object v0, v0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v0, v0, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    const v1, 0x7f0700b2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    return-void
.end method
