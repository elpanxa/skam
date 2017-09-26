.class public final Lcom/startapp/android/publish/h/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/h/a$1;,
        Lcom/startapp/android/publish/h/a$d;,
        Lcom/startapp/android/publish/h/a$b;,
        Lcom/startapp/android/publish/h/a$a;,
        Lcom/startapp/android/publish/h/a$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/startapp/android/publish/h/a$c;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 45
    new-instance v1, Lcom/startapp/android/publish/h/a$c;

    invoke-direct {v1}, Lcom/startapp/android/publish/h/a$c;-><init>()V

    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/startapp/android/publish/h/a;->b(Landroid/content/Context;)Lcom/startapp/android/publish/h/a$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/startapp/android/publish/h/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/h/a$c;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/startapp/android/publish/h/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/a$c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 53
    const-string v0, "Error getting advertising id. stackTrace:"

    invoke-static {v4, v0}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 55
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_0
    const-string v0, "0"

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/a$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/startapp/android/publish/h/a$a;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 89
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    new-instance v1, Lcom/startapp/android/publish/h/a$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/h/a$b;-><init>(Lcom/startapp/android/publish/h/a$1;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_1
    new-instance v0, Lcom/startapp/android/publish/h/a$d;

    invoke-virtual {v1}, Lcom/startapp/android/publish/h/a$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/startapp/android/publish/h/a$d;-><init>(Landroid/os/IBinder;)V

    .line 103
    new-instance v2, Lcom/startapp/android/publish/h/a$a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/h/a$d;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/startapp/android/publish/h/a$d;->a(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/startapp/android/publish/h/a$a;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    throw v0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 112
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
