.class public Lio/casper/android/l/p;
.super Lio/casper/android/l/a/a;
.source "RoutingManager.java"


# static fields
.field public static final PREFERENCE_ROUTING_APPS_ANDROID_IMOJI:Ljava/lang/String; = "pref_routing_apps_android_imoji"

.field public static final PREFERENCE_ROUTING_CASPER:Ljava/lang/String; = "pref_routing_casper"

.field public static final PREFERENCE_ROUTING_CASPER_ADDONS:Ljava/lang/String; = "pref_routing_casper_addons"

.field public static final PREFERENCE_ROUTING_CASPER_ADDONSFREE_HOW:Ljava/lang/String; = "pref_routing_casper_addonsfree_how"

.field public static final PREFERENCE_ROUTING_CASPER_ADDONS_MULTIPLE_ACCOUNTS:Ljava/lang/String; = "pref_routing_casper_addons_multiple_accounts"

.field public static final PREFERENCE_ROUTING_CASPER_ADDONS_REMOVE_ADVERTISEMENTS:Ljava/lang/String; = "pref_routing_casper_addons_remove_advertisements"

.field public static final PREFERENCE_ROUTING_CASPER_ADDONS_SLIDE_FILTERS:Ljava/lang/String; = "pref_routing_casper_addons_slide_filters"

.field public static final PREFERENCE_ROUTING_CASPER_API_PRIVATE_SERVER:Ljava/lang/String; = "pref_routing_casper_api_private_server"

.field public static final PREFERENCE_ROUTING_CASPER_API_SERVER:Ljava/lang/String; = "pref_routing_casper_api_server"

.field public static final PREFERENCE_ROUTING_CASPER_EMOJI_APPLE_PACK_1:Ljava/lang/String; = "pref_routing_casper_emoji:apple-emoji-pack-1"

.field public static final PREFERENCE_ROUTING_CASPER_EMOJI_GOOGLE_PACK_1:Ljava/lang/String; = "pref_routing_casper_emoji:google-emoji-pack-1"

.field public static final PREFERENCE_ROUTING_CASPER_KB_AUTHENTICATION_GOOGLE:Ljava/lang/String; = "pref_routing_casper_kb_authentication_google"

.field public static final PREFERENCE_ROUTING_CASPER_KB_AUTHENTICATION_SNAPCHAT:Ljava/lang/String; = "pref_routing_casper_kb_authentication_snapchat"

.field public static final PREFERENCE_ROUTING_CASPER_KB_CUSTOM_VIDEO_THUMBNAILS:Ljava/lang/String; = "pref_routing_casper_kb_custom_video_thumbnails"

.field public static final PREFERENCE_ROUTING_CASPER_KB_KNOWLEDGEBASE:Ljava/lang/String; = "pref_routing_casper_kb_knowledgebase"

.field public static final PREFERENCE_ROUTING_CASPER_KB_LOGIN_ISSUES_GOOGLE:Ljava/lang/String; = "pref_routing_casper_kb_login_issues_google"

.field public static final PREFERENCE_ROUTING_CASPER_KB_LOGIN_ISSUES_SNAPCHAT:Ljava/lang/String; = "pref_routing_casper_kb_login_issues_snapchat"

.field public static final PREFERENCE_ROUTING_CASPER_KB_SIGNING_SERVER:Ljava/lang/String; = "pref_routing_casper_kb_signing_server"

.field public static final PREFERENCE_ROUTING_CASPER_TOS:Ljava/lang/String; = "pref_routing_casper_tos"

.field public static final PREFERENCE_ROUTING_FACEBOOK_EXTERNAL_CASPER:Ljava/lang/String; = "pref_routing_facebook_external_casper"

.field public static final PREFERENCE_ROUTING_FACEBOOK_EXTERNAL_LIAMCOTTLE:Ljava/lang/String; = "pref_routing_facebook_external_liamcottle"

.field public static final PREFERENCE_ROUTING_FACEBOOK_INTERNAL_CASPER:Ljava/lang/String; = "pref_routing_facebook_internal_casper"

.field public static final PREFERENCE_ROUTING_FACEBOOK_INTERNAL_LIAMCOTTLE:Ljava/lang/String; = "pref_routing_facebook_internal_liamcottle"

.field public static final PREFERENCE_ROUTING_INSTAGRAM_LIAMCOTTLE:Ljava/lang/String; = "pref_routing_instagram_liamcottle"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string v0, "pref_routing_apps_android_imoji"

    const-string v1, "https://play.google.com/store/apps/details?id=com.imojiapp.imoji.prod&referrer=utm_source%3Dliamcottle%26utm_medium%3Dio.casper.android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/casper/android/c/b/b/a/a/g/b;)V
    .locals 12

    .prologue
    .line 155
    if-eqz p1, :cond_16

    .line 157
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/g/b;->a()Lio/casper/android/c/b/b/a/a/g/a;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/g/b;->b()Lio/casper/android/c/b/b/a/a/g/a/c;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/g/b;->c()Lio/casper/android/c/b/b/a/a/g/b/b;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/g/b;->d()Lio/casper/android/c/b/b/a/a/g/c/a;

    move-result-object v3

    .line 162
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    const-string v4, "pref_routing_apps_android_imoji"

    invoke-virtual {p0, v4, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    if-eqz v1, :cond_11

    .line 174
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/a/c;->a()Lio/casper/android/c/b/b/a/a/g/a/b;

    move-result-object v0

    .line 175
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/a/c;->b()Lio/casper/android/c/b/b/a/a/g/a/a;

    move-result-object v4

    .line 176
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/a/c;->c()Lio/casper/android/c/b/b/a/a/g/a/d;

    move-result-object v5

    .line 177
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/a/c;->d()Lio/casper/android/c/b/b/a/a/g/a/e;

    move-result-object v6

    .line 178
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/a/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 180
    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/a/b;->a()Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/a/b;->b()Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/a/b;->c()Ljava/lang/String;

    move-result-object v9

    .line 185
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/a/b;->d()Ljava/lang/String;

    move-result-object v10

    .line 186
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/a/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v7, :cond_1

    .line 189
    const-string v11, "pref_routing_casper_addons"

    invoke-virtual {p0, v11, v7}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    if-eqz v8, :cond_2

    .line 193
    const-string v7, "pref_routing_casper_addonsfree_how"

    invoke-virtual {p0, v7, v8}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    if-eqz v9, :cond_3

    .line 197
    const-string v7, "pref_routing_casper_addons_multiple_accounts"

    invoke-virtual {p0, v7, v9}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_3
    if-eqz v10, :cond_4

    .line 201
    const-string v7, "pref_routing_casper_addons_remove_advertisements"

    invoke-virtual {p0, v7, v10}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_4
    if-eqz v0, :cond_5

    .line 205
    const-string v7, "pref_routing_casper_addons_slide_filters"

    invoke-virtual {p0, v7, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_5
    if-eqz v4, :cond_7

    .line 212
    invoke-virtual {v4}, Lio/casper/android/c/b/b/a/a/g/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v4}, Lio/casper/android/c/b/b/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v4

    .line 215
    if-eqz v0, :cond_6

    .line 216
    const-string v7, "pref_routing_casper_api_server"

    invoke-virtual {p0, v7, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_6
    if-eqz v4, :cond_7

    .line 220
    const-string v0, "pref_routing_casper_api_private_server"

    invoke-virtual {p0, v0, v4}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_7
    if-eqz v5, :cond_9

    .line 227
    invoke-virtual {v5}, Lio/casper/android/c/b/b/a/a/g/a/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v5}, Lio/casper/android/c/b/b/a/a/g/a/d;->b()Ljava/lang/String;

    move-result-object v4

    .line 230
    if-eqz v0, :cond_8

    .line 231
    const-string v5, "pref_routing_casper_emoji:apple-emoji-pack-1"

    invoke-virtual {p0, v5, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_8
    if-eqz v4, :cond_9

    .line 235
    const-string v0, "pref_routing_casper_emoji:google-emoji-pack-1"

    invoke-virtual {p0, v0, v4}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_9
    if-eqz v6, :cond_10

    .line 242
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->b()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->c()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->d()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->e()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->f()Ljava/lang/String;

    move-result-object v9

    .line 248
    invoke-virtual {v6}, Lio/casper/android/c/b/b/a/a/g/a/e;->g()Ljava/lang/String;

    move-result-object v6

    .line 250
    if-eqz v0, :cond_a

    .line 251
    const-string v10, "pref_routing_casper_kb_authentication_google"

    invoke-virtual {p0, v10, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_a
    if-eqz v4, :cond_b

    .line 255
    const-string v0, "pref_routing_casper_kb_authentication_snapchat"

    invoke-virtual {p0, v0, v4}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_b
    if-eqz v5, :cond_c

    .line 259
    const-string v0, "pref_routing_casper_kb_login_issues_google"

    invoke-virtual {p0, v0, v5}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_c
    if-eqz v7, :cond_d

    .line 263
    const-string v0, "pref_routing_casper_kb_login_issues_snapchat"

    invoke-virtual {p0, v0, v7}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_d
    if-eqz v8, :cond_e

    .line 267
    const-string v0, "pref_routing_casper_kb_custom_video_thumbnails"

    invoke-virtual {p0, v0, v8}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_e
    if-eqz v9, :cond_f

    .line 271
    const-string v0, "pref_routing_casper_kb_signing_server"

    invoke-virtual {p0, v0, v9}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_f
    if-eqz v6, :cond_10

    .line 275
    const-string v0, "pref_routing_casper_kb_knowledgebase"

    invoke-virtual {p0, v0, v6}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_10
    if-eqz v1, :cond_11

    .line 281
    const-string v0, "pref_routing_casper_tos"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_11
    if-eqz v2, :cond_15

    .line 288
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/a/g/b/b;->a()Lio/casper/android/c/b/b/a/a/g/b/a;

    move-result-object v0

    .line 289
    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/a/g/b/b;->b()Lio/casper/android/c/b/b/a/a/g/b/c;

    move-result-object v1

    .line 291
    if-eqz v0, :cond_13

    .line 293
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/b/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/a/g/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v2, :cond_12

    .line 297
    const-string v4, "pref_routing_facebook_external_casper"

    invoke-virtual {p0, v4, v2}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_12
    if-eqz v0, :cond_13

    .line 301
    const-string v2, "pref_routing_facebook_external_liamcottle"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_13
    if-eqz v1, :cond_15

    .line 308
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/a/g/b/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 311
    if-eqz v0, :cond_14

    .line 312
    const-string v2, "pref_routing_facebook_internal_casper"

    invoke-virtual {p0, v2, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_14
    if-eqz v1, :cond_15

    .line 316
    const-string v0, "pref_routing_facebook_internal_liamcottle"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_15
    if-eqz v3, :cond_16

    .line 325
    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/a/g/c/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_16

    .line 328
    const-string v1, "pref_routing_instagram_liamcottle"

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_16
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lio/casper/android/l/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, "pref_routing_casper"

    const-string v1, "http://casper.io"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const-string v0, "pref_routing_casper_addons"

    const-string v1, "http://casper.io/kb-category/addons"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const-string v0, "pref_routing_casper_addons_multiple_accounts"

    const-string v1, "http://casper.io/kb/multiple-accounts"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "pref_routing_casper_addons_remove_advertisements"

    const-string v1, "http://casper.io/kb/remove-advertisements"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const-string v0, "pref_routing_casper_addonsfree_how"

    const-string v1, "http://accounts.casper.io/addons_free.php"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, "pref_routing_casper_api_server"

    const-string v1, "http://api.casper.io"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const-string v0, "pref_routing_casper_api_private_server"

    const-string v1, "https://casper-api-private.herokuapp.com"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    const-string v0, "pref_routing_casper_kb_authentication_google"

    const-string v1, "http://casper.io/kb/authentication-google"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    const-string v0, "pref_routing_casper_kb_authentication_snapchat"

    const-string v1, "http://casper.io/kb/authentication-snapchat"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const-string v0, "pref_routing_casper_kb_login_issues_google"

    const-string v1, "http://casper.io/kb/login-issues-google"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    const-string v0, "pref_routing_casper_kb_login_issues_snapchat"

    const-string v1, "http://casper.io/kb/login-issues-snapchat"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const-string v0, "pref_routing_casper_kb_custom_video_thumbnails"

    const-string v1, "http://casper.io/kb/custom-video-thumbnails"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    const-string v0, "pref_routing_casper_kb_knowledgebase"

    const-string v1, "http://casper.io/knowledge-base"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const-string v0, "pref_routing_casper_tos"

    const-string v1, "http://casper.io/terms-of-use"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const-string v0, "pref_routing_facebook_external_casper"

    const-string v1, "https://www.facebook.com/casper4snapchat"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const-string v0, "pref_routing_facebook_external_liamcottle"

    const-string v1, "https://www.facebook.com/liamcottledotcom"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    const-string v0, "pref_routing_facebook_internal_casper"

    const-string v1, "fb://page/1539019129697676"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    const-string v0, "pref_routing_facebook_internal_liamcottle"

    const-string v1, "fb://page/386767901387814"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-string v0, "pref_routing_instagram_liamcottle"

    const-string v1, "http://instagram.com/_u/liamcarncottle"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
