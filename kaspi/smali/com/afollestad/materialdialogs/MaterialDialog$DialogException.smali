.class public Lcom/afollestad/materialdialogs/MaterialDialog$DialogException;
.super Landroid/view/WindowManager$BadTokenException;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    .line 251
    return-void
.end method
