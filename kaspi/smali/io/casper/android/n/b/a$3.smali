.class Lio/casper/android/n/b/a$3;
.super Ljava/util/TimerTask;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a;->b(Lio/casper/android/n/b/d/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/b/a;


# direct methods
.method constructor <init>(Lio/casper/android/n/b/a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lio/casper/android/n/b/a$3;->this$0:Lio/casper/android/n/b/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 225
    new-instance v0, Lio/casper/android/n/b/d/i;

    invoke-direct {v0}, Lio/casper/android/n/b/d/i;-><init>()V

    .line 226
    const-string v1, "ChatSession"

    const-string v2, "Sending Ping: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lio/casper/android/n/b/d/i;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lio/casper/android/n/b/a$3;->this$0:Lio/casper/android/n/b/a;

    invoke-virtual {v1, v0}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/d/n;)V

    .line 228
    return-void
.end method
