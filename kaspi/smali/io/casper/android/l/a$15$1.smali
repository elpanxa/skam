.class Lio/casper/android/l/a$15$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a$15;->onRevMobAdNotReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/l/a$15;


# direct methods
.method constructor <init>(Lio/casper/android/l/a$15;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lio/casper/android/l/a$15$1;->this$1:Lio/casper/android/l/a$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lio/casper/android/l/a$15$1;->this$1:Lio/casper/android/l/a$15;

    iget-object v0, v0, Lio/casper/android/l/a$15;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lio/casper/android/l/a$15$1;->this$1:Lio/casper/android/l/a$15;

    iget-object v0, v0, Lio/casper/android/l/a$15;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 444
    :cond_0
    return-void
.end method
