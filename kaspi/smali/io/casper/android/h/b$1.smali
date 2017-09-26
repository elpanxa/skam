.class Lio/casper/android/h/b$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "FolderSelectorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/h/b;


# direct methods
.method constructor <init>(Lio/casper/android/h/b;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lio/casper/android/h/b$1;->this$0:Lio/casper/android/h/b;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 35
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 29
    iget-object v0, p0, Lio/casper/android/h/b$1;->this$0:Lio/casper/android/h/b;

    invoke-static {v0}, Lio/casper/android/h/b;->b(Lio/casper/android/h/b;)Lio/casper/android/h/b$a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/h/b$1;->this$0:Lio/casper/android/h/b;

    invoke-static {v1}, Lio/casper/android/h/b;->a(Lio/casper/android/h/b;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/casper/android/h/b$a;->a(Ljava/io/File;)V

    .line 30
    return-void
.end method
