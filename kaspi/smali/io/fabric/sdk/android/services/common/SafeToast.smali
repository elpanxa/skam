.class public Lio/fabric/sdk/android/services/common/SafeToast;
.super Landroid/widget/Toast;
.source "SafeToast.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic access$001(Lio/fabric/sdk/android/services/common/SafeToast;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lio/fabric/sdk/android/services/common/SafeToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 3

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 57
    new-instance v1, Lio/fabric/sdk/android/services/common/SafeToast;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/SafeToast;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/services/common/SafeToast;->setView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/SafeToast;->setDuration(I)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    .line 40
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    new-instance v1, Lio/fabric/sdk/android/services/common/SafeToast$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/SafeToast$1;-><init>(Lio/fabric/sdk/android/services/common/SafeToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
