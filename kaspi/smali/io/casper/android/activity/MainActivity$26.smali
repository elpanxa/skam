.class Lio/casper/android/activity/MainActivity$26;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$26;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 1367
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 1368
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$26;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/MainActivity;->b()V

    .line 1369
    return-void
.end method
