.class Lio/casper/android/n/b/a/a$1;
.super Ljava/lang/Object;
.source "ConnectionStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a/a;->a(Lio/casper/android/n/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/b/a/a;

.field final synthetic val$connectionState:Lio/casper/android/n/b/a$a;


# direct methods
.method constructor <init>(Lio/casper/android/n/b/a/a;Lio/casper/android/n/b/a$a;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lio/casper/android/n/b/a/a$1;->this$0:Lio/casper/android/n/b/a/a;

    iput-object p2, p0, Lio/casper/android/n/b/a/a$1;->val$connectionState:Lio/casper/android/n/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/n/b/a/a$1;->this$0:Lio/casper/android/n/b/a/a;

    invoke-static {v0}, Lio/casper/android/n/b/a/a;->a(Lio/casper/android/n/b/a/a;)Lio/casper/android/n/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/b/a/a$1;->val$connectionState:Lio/casper/android/n/b/a$a;

    invoke-interface {v0, v1}, Lio/casper/android/n/b/c/a;->a(Lio/casper/android/n/b/a$a;)V

    .line 20
    return-void
.end method
