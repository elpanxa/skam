.class Lio/casper/android/a/c$1;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Lio/casper/android/o/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/c;


# direct methods
.method constructor <init>(Lio/casper/android/a/c;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/casper/android/a/c$1;->this$0:Lio/casper/android/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/casper/android/a/c$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/c$1$1;-><init>(Lio/casper/android/a/c$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
