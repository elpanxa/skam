.class public Lcom/startapp/android/publish/a/b;
.super Lcom/startapp/android/publish/a/d;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/a/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/a/b;->offset:I

    .line 19
    return-void
.end method


# virtual methods
.method protected loadAds(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 6

    .prologue
    .line 23
    new-instance v0, Lcom/startapp/android/publish/e/f;

    iget-object v1, p0, Lcom/startapp/android/publish/a/b;->context:Landroid/content/Context;

    iget v3, p0, Lcom/startapp/android/publish/a/b;->offset:I

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/e/f;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/a/d;ILcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/f;->c()V

    .line 24
    iget v0, p0, Lcom/startapp/android/publish/a/b;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/a/b;->offset:I

    .line 25
    return-void
.end method
