.class Lio/casper/android/a/b$1$1;
.super Ljava/lang/Object;
.source "ConversationSnapsListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/b$1;


# direct methods
.method constructor <init>(Lio/casper/android/a/b$1;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lio/casper/android/a/b$1$1;->this$1:Lio/casper/android/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/casper/android/a/b$1$1;->this$1:Lio/casper/android/a/b$1;

    iget-object v0, v0, Lio/casper/android/a/b$1;->this$0:Lio/casper/android/a/b;

    invoke-virtual {v0}, Lio/casper/android/a/b;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
