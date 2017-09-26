.class Lio/casper/android/a/a/h$1;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Lio/casper/android/o/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h;-><init>(Landroid/content/Context;Lio/casper/android/i/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/h;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lio/casper/android/a/a/h$1;->this$0:Lio/casper/android/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lio/casper/android/a/a/h$1;->this$0:Lio/casper/android/a/a/h;

    iget-object v0, v0, Lio/casper/android/a/a/h;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/a/a/h$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/a/h$1$1;-><init>(Lio/casper/android/a/a/h$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method
