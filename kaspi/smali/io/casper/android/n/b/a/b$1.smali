.class Lio/casper/android/n/b/a/b$1;
.super Ljava/lang/Object;
.source "PacketHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a/b;->a(Lio/casper/android/n/b/d/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/b/a/b;

.field final synthetic val$scMessage:Lio/casper/android/n/b/d/n;


# direct methods
.method constructor <init>(Lio/casper/android/n/b/a/b;Lio/casper/android/n/b/d/n;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lio/casper/android/n/b/a/b$1;->this$0:Lio/casper/android/n/b/a/b;

    iput-object p2, p0, Lio/casper/android/n/b/a/b$1;->val$scMessage:Lio/casper/android/n/b/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lio/casper/android/n/b/a/b$1;->this$0:Lio/casper/android/n/b/a/b;

    invoke-static {v0}, Lio/casper/android/n/b/a/b;->a(Lio/casper/android/n/b/a/b;)Lio/casper/android/n/b/c/b;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/n/b/a/b$1;->val$scMessage:Lio/casper/android/n/b/d/n;

    invoke-interface {v0, v1}, Lio/casper/android/n/b/c/b;->a(Lio/casper/android/n/b/d/n;)V

    .line 20
    return-void
.end method
