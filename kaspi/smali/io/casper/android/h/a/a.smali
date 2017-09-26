.class public Lio/casper/android/h/a/a;
.super Ljava/lang/Object;
.source "MaterialDialogWrapper.java"


# instance fields
.field private mMaterialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/casper/android/h/a/a;->mMaterialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lio/casper/android/h/a/a;->mMaterialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 16
    :try_start_0
    iget-object v0, p0, Lio/casper/android/h/a/a;->mMaterialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/h/a/a;->mMaterialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    iget-object v0, p0, Lio/casper/android/h/a/a;->mMaterialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
