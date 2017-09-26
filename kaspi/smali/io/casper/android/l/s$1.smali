.class Lio/casper/android/l/s$1;
.super Ljava/lang/Object;
.source "SnapchatAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/s;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/s;


# direct methods
.method constructor <init>(Lio/casper/android/l/s;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v0, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    iget-object v1, v1, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    iget-object v2, v2, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    const v3, 0x7f0700bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 179
    iget-object v1, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/s;->b(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/l/s;->c(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    invoke-static {v0}, Lio/casper/android/l/s;->a(Lio/casper/android/l/s;)V

    .line 183
    iget-object v0, p0, Lio/casper/android/l/s$1;->this$0:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 187
    :cond_0
    return-void
.end method
