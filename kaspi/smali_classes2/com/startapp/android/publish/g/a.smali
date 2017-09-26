.class public Lcom/startapp/android/publish/g/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Ljava/net/CookieManager;


# direct methods
.method public static a()Ljava/net/CookieManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/startapp/android/publish/g/a;->a:Ljava/net/CookieManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lcom/startapp/android/publish/g/b;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/g/b;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lcom/startapp/android/publish/g/a;->a:Ljava/net/CookieManager;

    .line 17
    return-void
.end method
