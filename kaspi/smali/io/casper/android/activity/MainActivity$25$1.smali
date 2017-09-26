.class Lio/casper/android/activity/MainActivity$25$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$25;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$25;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$25;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$25$1;->this$1:Lio/casper/android/activity/MainActivity$25;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$25$1;->this$1:Lio/casper/android/activity/MainActivity$25;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$25;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 1180
    return-void
.end method
