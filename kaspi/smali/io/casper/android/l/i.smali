.class public Lio/casper/android/l/i;
.super Lio/casper/android/l/a/a;
.source "GoogleAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/l/i$a;
    }
.end annotation


# static fields
.field private static final PREFERENCE_GOOGLE_AUTH_APK_CERTIFICATE_DIGEST:Ljava/lang/String; = "pref_google_auth_apk_certificate_digest"

.field private static final PREFERENCE_GOOGLE_AUTH_APK_DIGEST:Ljava/lang/String; = "pref_google_auth_apk_digest"

.field private static final PREFERENCE_GOOGLE_AUTH_APK_SIGNATURE:Ljava/lang/String; = "pref_google_auth_apk_signature"

.field private static final PREFERENCE_GOOGLE_AUTH_EMAIL:Ljava/lang/String; = "pref_google_auth_email"

.field private static final PREFERENCE_GOOGLE_AUTH_ENABLED:Ljava/lang/String; = "pref_google_auth_enabled"

.field private static final PREFERENCE_GOOGLE_AUTH_PASSWORD:Ljava/lang/String; = "pref_google_auth_password"

.field private static final PREFERENCE_GOOGLE_AUTH_REFRESH_ON_LAUNCH:Ljava/lang/String; = "pref_google_auth_refresh_on_launch"

.field private static final PREFERENCE_GOOGLE_AUTH_TOKEN:Ljava/lang/String; = "pref_google_auth_token"

.field private static final PREFERENCE_GOOGLE_AUTH_TOKEN_EXPIRES:Ljava/lang/String; = "pref_google_auth_token_expires"

.field private static final PREFERENCE_GOOGLE_AUTH_TOKEN_VALID_MILLIS:Ljava/lang/String; = "pref_google_auth_token_valid_millis"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 94
    const-string v0, "pref_google_auth_token_expires"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/i;->b(Ljava/lang/String;J)V

    .line 95
    return-void
.end method

.method public a(Lio/casper/android/c/b/b/a/a/d/c;)V
    .locals 6

    .prologue
    .line 227
    if-eqz p1, :cond_3

    .line 229
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/d/c;->b()Lio/casper/android/c/b/b/a/a/d/a;

    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/d/c;->c()Lio/casper/android/c/b/b/a/a/d/b;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/d/c;->a()Z

    move-result v2

    invoke-virtual {p0, v2}, Lio/casper/android/l/i;->a(Z)V

    .line 234
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/d/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p0, v2}, Lio/casper/android/l/i;->d(Ljava/lang/String;)V

    .line 243
    :cond_0
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p0, v0}, Lio/casper/android/l/i;->e(Ljava/lang/String;)V

    .line 249
    :cond_1
    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/d/b;->a()Z

    move-result v0

    .line 252
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/d/b;->c()J

    move-result-wide v4

    .line 255
    invoke-virtual {p0, v0}, Lio/casper/android/l/i;->b(Z)V

    .line 257
    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {p0, v2}, Lio/casper/android/l/i;->f(Ljava/lang/String;)V

    .line 261
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    .line 262
    invoke-virtual {p0, v4, v5}, Lio/casper/android/l/i;->b(J)V

    .line 269
    :cond_3
    return-void
.end method

.method public a(Lio/casper/android/l/i$a;)V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lio/casper/android/l/i;->a(Ljava/lang/String;Ljava/lang/String;Lio/casper/android/l/i$a;)V

    .line 129
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const-string v0, "pref_google_auth_email"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lio/casper/android/l/i$a;)V
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    invoke-virtual {p0}, Lio/casper/android/l/i;->e()J

    move-result-wide v2

    .line 136
    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lio/casper/android/l/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz p3, :cond_0

    .line 139
    invoke-interface {p3, v0}, Lio/casper/android/l/i$a;->a(Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    new-instance v0, Lio/casper/android/c/d/c/a;

    iget-object v1, p0, Lio/casper/android/l/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lio/casper/android/c/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lio/casper/android/l/i$1;

    invoke-direct {v1, p0}, Lio/casper/android/l/i$1;-><init>(Lio/casper/android/l/i;)V

    invoke-virtual {v0, v1}, Lio/casper/android/c/d/c/a;->a(Lio/casper/android/c/c/a/a;)V

    .line 159
    new-instance v0, Lio/casper/android/j/a/a;

    iget-object v1, p0, Lio/casper/android/l/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lio/casper/android/j/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lio/casper/android/l/i$2;

    invoke-direct {v1, p0, p3}, Lio/casper/android/l/i$2;-><init>(Lio/casper/android/l/i;Lio/casper/android/l/i$a;)V

    invoke-virtual {v0, v1}, Lio/casper/android/j/a/a;->setCallback(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V

    .line 217
    invoke-virtual {v0}, Lio/casper/android/j/a/a;->executeAsync()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "pref_google_auth_enabled"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 38
    const-string v0, "pref_google_auth_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, "pref_google_auth_email"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 98
    const-string v0, "pref_google_auth_token_valid_millis"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/i;->b(Ljava/lang/String;J)V

    .line 99
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const-string v0, "pref_google_auth_password"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "pref_google_auth_refresh_on_launch"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const-string v0, "pref_google_auth_password"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    const-string v0, "pref_google_auth_token"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-string v0, "pref_google_auth_token"

    const-string v1, "ng"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const-string v0, "pref_google_auth_apk_digest"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public e()J
    .locals 4

    .prologue
    .line 54
    const-string v0, "pref_google_auth_token_expires"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/i;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    const-string v0, "pref_google_auth_apk_certificate_digest"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public f()J
    .locals 4

    .prologue
    .line 58
    const-string v0, "pref_google_auth_token_valid_millis"

    const-wide/32 v2, 0xdbba0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/i;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "pref_google_auth_apk_signature"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 62
    const-string v0, "pref_google_auth_refresh_on_launch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "pref_google_auth_apk_signature"

    sget-object v1, Lio/casper/android/n/a;->APK_SIGNATURE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lio/casper/android/l/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/casper/android/l/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    const-string v0, "pref_google_auth_email"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "pref_google_auth_password"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lio/casper/android/l/i;->k()V

    .line 125
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 222
    const-string v0, "pref_google_auth_token_expires"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/i;->b(Ljava/lang/String;J)V

    .line 223
    return-void
.end method
