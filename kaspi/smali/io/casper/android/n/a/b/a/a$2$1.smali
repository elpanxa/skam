.class Lio/casper/android/n/a/b/a/a$2$1;
.super Ljava/lang/Object;
.source "SnapchatRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/a/b/a/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/n/a/b/a/a$2;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lio/casper/android/n/a/b/a/a$2;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lio/casper/android/n/a/b/a/a$2$1;->this$1:Lio/casper/android/n/a/b/a/a$2;

    iput-object p2, p0, Lio/casper/android/n/a/b/a/a$2$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 191
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$2$1;->this$1:Lio/casper/android/n/a/b/a/a$2;

    iget-object v0, v0, Lio/casper/android/n/a/b/a/a$2;->val$httpCallback:Lio/casper/android/c/c/a/a;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p0, Lio/casper/android/n/a/b/a/a$2$1;->this$1:Lio/casper/android/n/a/b/a/a$2;

    iget-object v3, v3, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v3, v3, Lio/casper/android/n/a/b/a/a;->mContext:Landroid/content/Context;

    const v4, 0x7f070074

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/casper/android/n/a/b/a/a$2$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lio/casper/android/c/c/a/a;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method
