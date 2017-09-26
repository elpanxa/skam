.class public Lcom/gc/materialdesign/views/ProgressBarIndeterminate;
.super Lcom/gc/materialdesign/views/ProgressBarDeterminate;
.source "ProgressBarIndeterminate.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/gc/materialdesign/views/ProgressBarDeterminate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;

    invoke-direct {v0, p0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate$1;-><init>(Lcom/gc/materialdesign/views/ProgressBarIndeterminate;)V

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ProgressBarIndeterminate;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method
