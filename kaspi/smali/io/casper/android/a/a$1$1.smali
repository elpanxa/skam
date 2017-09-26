.class Lio/casper/android/a/a$1$1;
.super Ljava/lang/Object;
.source "ChatMessagesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a$1;->a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/a$1;


# direct methods
.method constructor <init>(Lio/casper/android/a/a$1;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lio/casper/android/a/a$1$1;->this$1:Lio/casper/android/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    iget-object v1, p0, Lio/casper/android/a/a$1$1;->this$1:Lio/casper/android/a/a$1;

    iget-object v1, v1, Lio/casper/android/a/a$1;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lio/casper/android/a/a$1$1;->this$1:Lio/casper/android/a/a$1;

    iget-object v1, v1, Lio/casper/android/a/a$1;->this$0:Lio/casper/android/a/a;

    invoke-static {v1}, Lio/casper/android/a/a;->b(Lio/casper/android/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method
