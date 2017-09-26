.class Lio/casper/android/l/s$2;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SnapchatAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/s;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/s;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/l/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lio/casper/android/l/s$2;->this$0:Lio/casper/android/l/s;

    iput-object p2, p0, Lio/casper/android/l/s$2;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lio/casper/android/l/s$2;->this$0:Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/l/s$2;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/s;->h(Ljava/lang/String;)V

    .line 256
    return-void
.end method
