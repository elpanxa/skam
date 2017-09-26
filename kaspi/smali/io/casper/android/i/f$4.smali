.class Lio/casper/android/i/f$4;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/f;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/f;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/casper/android/i/f;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lio/casper/android/i/f$4;->this$0:Lio/casper/android/i/f;

    iput-object p2, p0, Lio/casper/android/i/f$4;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lio/casper/android/i/f$4;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->f(Lio/casper/android/i/f;)Lio/casper/android/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/f$4;->val$objects:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/casper/android/a/a/d;->a(Ljava/util/List;)V

    .line 240
    return-void
.end method
