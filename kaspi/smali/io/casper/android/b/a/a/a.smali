.class public Lio/casper/android/b/a/a/a;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventBuilder:Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/casper/android/b/a/a/a;->mContext:Landroid/content/Context;

    .line 13
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    iput-object v0, p0, Lio/casper/android/b/a/a/a;->mEventBuilder:Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/b/a/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/b/a/a/a;->mEventBuilder:Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;
    .locals 1

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string p1, "null"

    .line 36
    :cond_0
    iget-object v0, p0, Lio/casper/android/b/a/a/a;->mEventBuilder:Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 37
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;
    .locals 1

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string p1, "null"

    .line 28
    :cond_0
    iget-object v0, p0, Lio/casper/android/b/a/a/a;->mEventBuilder:Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 29
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;
    .locals 1

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string p1, "null"

    .line 44
    :cond_0
    iget-object v0, p0, Lio/casper/android/b/a/a/a;->mEventBuilder:Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 45
    return-object p0
.end method
