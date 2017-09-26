.class Lio/casper/android/ui/a$1;
.super Ljava/lang/Object;
.source "CaptionView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/ui/a;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/a;


# direct methods
.method constructor <init>(Lio/casper/android/ui/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lio/casper/android/ui/a$1;->this$0:Lio/casper/android/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lio/casper/android/ui/a$1;->this$0:Lio/casper/android/ui/a;

    iget-object v1, p0, Lio/casper/android/ui/a$1;->this$0:Lio/casper/android/ui/a;

    invoke-static {v1}, Lio/casper/android/ui/a;->a(Lio/casper/android/ui/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/casper/android/ui/a;->a(I)V

    .line 78
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
