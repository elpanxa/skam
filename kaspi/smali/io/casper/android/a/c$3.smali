.class Lio/casper/android/a/c$3;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c;->a(Lio/casper/android/a/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/c;

.field final synthetic val$font:Lio/casper/android/c/b/b/a/b;


# direct methods
.method constructor <init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/b;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/casper/android/a/c$3;->this$0:Lio/casper/android/a/c;

    iput-object p2, p0, Lio/casper/android/a/c$3;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/casper/android/a/c$3;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->b(Lio/casper/android/a/c;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/c$3;->val$font:Lio/casper/android/c/b/b/a/b;

    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/c$3;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 155
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/c$3;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lio/casper/android/a/c$3;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->b(Lio/casper/android/a/c;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/c$3;->val$font:Lio/casper/android/c/b/b/a/b;

    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 168
    return-void
.end method
