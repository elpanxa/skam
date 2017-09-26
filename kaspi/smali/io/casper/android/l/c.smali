.class public Lio/casper/android/l/c;
.super Lio/casper/android/l/a/a;
.source "AnalyticsManager.java"


# static fields
.field public static final PREFERENCE_ANALYTICS_PROPERTY_ID:Ljava/lang/String; = "pref_analytics_property_id"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public static a(Lio/casper/android/b/a/a/a;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lio/casper/android/b/a/a/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lio/casper/android/b/a/a/a;->a()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/CasperApplication;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lio/casper/android/CasperApplication;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lio/casper/android/b/a/a/a;->b()Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    const-string v0, "pref_analytics_property_id"

    const-string v1, "UA-38938653-20"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/c/b/b/a/a/b/a;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/b/a;->a()Lio/casper/android/c/b/b/a/a/b/b;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lio/casper/android/l/c;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "pref_analytics_property_id"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
