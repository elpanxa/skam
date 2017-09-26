.class public Lio/casper/android/n/a/b/o;
.super Lio/casper/android/n/a/b/q;
.source "PrivacySettingsRequest.java"


# static fields
.field public static final PRIVACY_EVERYONE:Ljava/lang/String; = "0"

.field public static final PRIVACY_FRIENDS:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/q;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "action"

    const-string v1, "updatePrivacy"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "privacySetting"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/n/a/b/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
