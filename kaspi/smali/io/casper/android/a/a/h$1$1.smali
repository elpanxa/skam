.class Lio/casper/android/a/a/h$1$1;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/a/h$1;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h$1;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/casper/android/a/a/h$1$1;->this$1:Lio/casper/android/a/a/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/casper/android/a/a/h$1$1;->this$1:Lio/casper/android/a/a/h$1;

    iget-object v0, v0, Lio/casper/android/a/a/h$1;->this$0:Lio/casper/android/a/a/h;

    invoke-virtual {v0}, Lio/casper/android/a/a/h;->notifyDataSetChanged()V

    .line 77
    return-void
.end method
