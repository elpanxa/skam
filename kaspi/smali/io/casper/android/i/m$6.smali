.class Lio/casper/android/i/m$6;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/m;->a(Lio/casper/android/c/c/f/c;Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/m;


# direct methods
.method constructor <init>(Lio/casper/android/i/m;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lio/casper/android/i/m$6;->this$0:Lio/casper/android/i/m;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lio/casper/android/i/m$6;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->b(Lio/casper/android/i/m;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 601
    return-void
.end method
