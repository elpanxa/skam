.class public Lio/casper/android/ui/b;
.super Lio/casper/android/ui/j;
.source "CustomMediaController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lio/casper/android/ui/j;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lio/casper/android/ui/b;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lio/casper/android/ui/j;->a()V

    .line 37
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lio/casper/android/ui/b;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lio/casper/android/ui/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
