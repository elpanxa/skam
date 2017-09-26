.class Lio/casper/android/camera/a$5;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Lio/casper/android/o/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/a;->a(Ljava/io/File;Lio/casper/android/camera/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/camera/a;

.field final synthetic val$outputFile:Ljava/io/File;

.field final synthetic val$photoCallback:Lio/casper/android/camera/a$b;


# direct methods
.method constructor <init>(Lio/casper/android/camera/a;Lio/casper/android/camera/a$b;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lio/casper/android/camera/a$5;->this$0:Lio/casper/android/camera/a;

    iput-object p2, p0, Lio/casper/android/camera/a$5;->val$photoCallback:Lio/casper/android/camera/a$b;

    iput-object p3, p0, Lio/casper/android/camera/a$5;->val$outputFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lio/casper/android/camera/a$5;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->i(Lio/casper/android/camera/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 571
    iget-object v0, p0, Lio/casper/android/camera/a$5;->val$photoCallback:Lio/casper/android/camera/a$b;

    iget-object v1, p0, Lio/casper/android/camera/a$5;->val$outputFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lio/casper/android/camera/a$b;->a(Ljava/io/File;)V

    .line 572
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lio/casper/android/camera/a$5;->this$0:Lio/casper/android/camera/a;

    invoke-static {v0}, Lio/casper/android/camera/a;->i(Lio/casper/android/camera/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 577
    iget-object v0, p0, Lio/casper/android/camera/a$5;->val$photoCallback:Lio/casper/android/camera/a$b;

    invoke-interface {v0, p1}, Lio/casper/android/camera/a$b;->a(Ljava/lang/Throwable;)V

    .line 578
    return-void
.end method
