.class public Lio/casper/android/n/b;
.super Ljava/lang/Object;
.source "SnapchatSessionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/b$a;,
        Lio/casper/android/n/b$b;
    }
.end annotation


# static fields
.field private static final PREFS_DIR:Ljava/lang/String; = "/data/data/com.snapchat.android/shared_prefs/"

.field private static final PREFS_FILE:Ljava/lang/String; = "/data/data/com.snapchat.android/shared_prefs/com.snapchat.android_preferences.xml"

.field private static final TAG:Ljava/lang/String; = "SnapchatSessionUtil"


# direct methods
.method public static a()Ljava/io/File;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.snapchat.android/shared_prefs/com.snapchat.android_preferences.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    invoke-static {}, Lio/casper/android/n/b;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v3, "username"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v3, "auth_token"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v3, "display_name"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v3, "android_display_name"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v3, "lastSuccessfulLoginUsername"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v3, "is_registering"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v3, "is_logged_in"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v3, "loggedInAfterChatV1_5"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v3, "snapchatUserIsLoggedIn"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v2, "SnapchatSessionUtil"

    const-string v3, "Injecting Credentials into Snapchat Preferences File failed with Exception"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    const-class v1, Lio/casper/android/n/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "su"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "chmod 777 /data/data/com.snapchat.android/shared_prefs/"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "su"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "chmod 777 /data/data/com.snapchat.android/shared_prefs/com.snapchat.android_preferences.xml"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 24
    const-string v0, "SnapchatSessionUtil"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Updated File Permissions for Snapchat Preferences File"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Landroid/content/SharedPreferences;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 29
    invoke-static {}, Lio/casper/android/n/b;->b()V

    .line 30
    invoke-static {}, Lio/casper/android/n/b;->a()Ljava/io/File;

    move-result-object v0

    .line 32
    const-string v1, "android.app.SharedPreferencesImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 36
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static d()Lio/casper/android/n/b$b;
    .locals 5

    .prologue
    .line 42
    new-instance v1, Lio/casper/android/n/b$b;

    invoke-direct {v1}, Lio/casper/android/n/b$b;-><init>()V

    .line 46
    :try_start_0
    invoke-static {}, Lio/casper/android/n/b;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v3, "auth_token"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {v1, v2}, Lio/casper/android/n/b$b;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Lio/casper/android/n/b$b;->b(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lio/casper/android/n/b$a;->AVAILABLE:Lio/casper/android/n/b$a;

    invoke-virtual {v1, v0}, Lio/casper/android/n/b$b;->a(Lio/casper/android/n/b$a;)V

    .line 66
    :goto_0
    return-object v1

    .line 58
    :cond_0
    sget-object v0, Lio/casper/android/n/b$a;->NOT_AVAILABLE:Lio/casper/android/n/b$a;

    invoke-virtual {v1, v0}, Lio/casper/android/n/b$b;->a(Lio/casper/android/n/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v2, Lio/casper/android/n/b$a;->NO_ACCESS:Lio/casper/android/n/b$a;

    invoke-virtual {v1, v2}, Lio/casper/android/n/b$b;->a(Lio/casper/android/n/b$a;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
