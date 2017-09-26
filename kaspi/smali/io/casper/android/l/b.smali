.class public Lio/casper/android/l/b;
.super Lio/casper/android/l/a/a;
.source "AddonManager.java"


# static fields
.field public static final ADDON_ADS:Ljava/lang/String; = "ads"

.field public static final ADDON_MULTIPLE_ACCOUNTS:Ljava/lang/String; = "multiple_accounts"

.field public static final ADDON_SLIDE_FILTERS:Ljava/lang/String; = "slide_filters"

.field public static final PREFERENCE_ADDON_ADS:Ljava/lang/String; = "pref_addon_ads"

.field public static final PREFERENCE_ADDON_MULTIPLE_ACCOUNTS:Ljava/lang/String; = "pref_addon_multiple_accounts"

.field public static final PREFERENCE_ADDON_SLIDE_FILTERS:Ljava/lang/String; = "pref_addon_slide_filters"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lio/casper/android/l/b;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_1
    return-void

    .line 31
    :sswitch_0
    const-string v1, "ads"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "multiple_accounts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "slide_filters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 34
    :pswitch_0
    const-string v0, "pref_addon_ads"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/l/b;->c(Ljava/lang/String;Z)V

    goto :goto_1

    .line 39
    :pswitch_1
    const-string v0, "pref_addon_multiple_accounts"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/l/b;->c(Ljava/lang/String;Z)V

    goto :goto_1

    .line 44
    :pswitch_2
    const-string v0, "pref_addon_slide_filters"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/l/b;->c(Ljava/lang/String;Z)V

    goto :goto_1

    .line 31
    :sswitch_data_0
    .sparse-switch
        -0x6603e6cb -> :sswitch_1
        -0x4514b893 -> :sswitch_2
        0x178b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/casper/android/l/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 77
    const-string v0, "pref_addon_ads"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_1
    return v0

    .line 54
    :sswitch_0
    const-string v2, "ads"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "multiple_accounts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "slide_filters"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 57
    :pswitch_0
    const-string v1, "pref_addon_ads"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 61
    :pswitch_1
    const-string v1, "pref_addon_multiple_accounts"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 65
    :pswitch_2
    const-string v1, "pref_addon_slide_filters"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 54
    :sswitch_data_0
    .sparse-switch
        -0x6603e6cb -> :sswitch_1
        -0x4514b893 -> :sswitch_2
        0x178b0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 81
    const-string v0, "pref_addon_slide_filters"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "pref_addon_multiple_accounts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
