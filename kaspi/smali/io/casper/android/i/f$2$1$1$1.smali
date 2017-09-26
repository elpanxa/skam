.class Lio/casper/android/i/f$2$1$1$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/f$2$1$1;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/f;)V
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
        "Lio/casper/android/n/a/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lio/casper/android/i/f$2$1$1;


# direct methods
.method constructor <init>(Lio/casper/android/i/f$2$1$1;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lio/casper/android/i/f$2$1$1$1;->this$3:Lio/casper/android/i/f$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/casper/android/i/f$2$1$1$1;->this$3:Lio/casper/android/i/f$2$1$1;

    iget-object v0, v0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    iget-object v0, v0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->d(Lio/casper/android/i/f;)Lio/casper/android/l/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/d;)V

    .line 145
    return-void
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p2, Lio/casper/android/n/a/c/d;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/f$2$1$1$1;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
