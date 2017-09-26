.class Lio/casper/android/activity/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/casper/android/l/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 781
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$19;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 785
    if-eqz p1, :cond_0

    .line 787
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$19;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 788
    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 789
    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 790
    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 791
    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 792
    new-instance v1, Lio/casper/android/activity/MainActivity$19$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/MainActivity$19$1;-><init>(Lio/casper/android/activity/MainActivity$19;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 801
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 805
    :cond_0
    return-void
.end method
