.class public Lio/casper/android/l/l;
.super Lio/casper/android/l/a/a;
.source "LearnManager.java"


# static fields
.field public static AGREEMENT:Ljava/lang/String;

.field public static CAMERA_PREFERENCES:Ljava/lang/String;

.field public static CHAT_UNSTABLE:Ljava/lang/String;

.field public static CUSTOM_STORY_PRIVACY:Ljava/lang/String;

.field public static CUSTOM_VIDEO_THUMBNAIL:Ljava/lang/String;

.field public static DATABASE_INIT:Ljava/lang/String;

.field public static FACEBOOK_AND_UPDATES:Ljava/lang/String;

.field public static FONTS_CHANGE:Ljava/lang/String;

.field public static FONTS_SELECT:Ljava/lang/String;

.field public static GOOGLE_AUTH_BYPASS:Ljava/lang/String;

.field public static GOOGLE_REAUTH:Ljava/lang/String;

.field public static HOLD_SNAP_REPLY:Ljava/lang/String;

.field public static OLD_CASPER_CHECK:Ljava/lang/String;

.field public static ROOT_SNAPCHAT_SESSION:Ljava/lang/String;

.field public static SHARE_VIA_CASPER:Ljava/lang/String;

.field public static SIGNING_LIBS_UNSUPPORTED:Ljava/lang/String;

.field public static STORY_STATS:Ljava/lang/String;

.field public static VIEWER_SWIPE_NAVIGATE_SAVED_SNAPS:Ljava/lang/String;

.field public static VIEWER_SWIPE_NAVIGATE_STORIES:Ljava/lang/String;

.field public static VIEWER_TOOLBARS_HIDE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "pref_learnt_agreement"

    sput-object v0, Lio/casper/android/l/l;->AGREEMENT:Ljava/lang/String;

    .line 13
    const-string v0, "pref_learnt_default_camera"

    sput-object v0, Lio/casper/android/l/l;->CAMERA_PREFERENCES:Ljava/lang/String;

    .line 14
    const-string v0, "pref_learnt_chat_unstable"

    sput-object v0, Lio/casper/android/l/l;->CHAT_UNSTABLE:Ljava/lang/String;

    .line 15
    const-string v0, "pref_learnt_facebook_and_updates"

    sput-object v0, Lio/casper/android/l/l;->FACEBOOK_AND_UPDATES:Ljava/lang/String;

    .line 16
    const-string v0, "pref_learnt_change_font"

    sput-object v0, Lio/casper/android/l/l;->FONTS_CHANGE:Ljava/lang/String;

    .line 17
    const-string v0, "pref_learnt_fonts_select"

    sput-object v0, Lio/casper/android/l/l;->FONTS_SELECT:Ljava/lang/String;

    .line 18
    const-string v0, "pref_learnt_google_reauth"

    sput-object v0, Lio/casper/android/l/l;->GOOGLE_REAUTH:Ljava/lang/String;

    .line 19
    const-string v0, "pref_learnt_story_stats"

    sput-object v0, Lio/casper/android/l/l;->STORY_STATS:Ljava/lang/String;

    .line 20
    const-string v0, "pref_learnt_root_snapchat_session"

    sput-object v0, Lio/casper/android/l/l;->ROOT_SNAPCHAT_SESSION:Ljava/lang/String;

    .line 21
    const-string v0, "pref_learnt_share_via_casper"

    sput-object v0, Lio/casper/android/l/l;->SHARE_VIA_CASPER:Ljava/lang/String;

    .line 22
    const-string v0, "pref_learnt_viewer_toolbars_hide"

    sput-object v0, Lio/casper/android/l/l;->VIEWER_TOOLBARS_HIDE:Ljava/lang/String;

    .line 23
    const-string v0, "pref_learnt_hold_snap_reply"

    sput-object v0, Lio/casper/android/l/l;->HOLD_SNAP_REPLY:Ljava/lang/String;

    .line 24
    const-string v0, "pref_learnt_google_auth_bypass"

    sput-object v0, Lio/casper/android/l/l;->GOOGLE_AUTH_BYPASS:Ljava/lang/String;

    .line 25
    const-string v0, "pref_learnt_custom_video_thumbnail"

    sput-object v0, Lio/casper/android/l/l;->CUSTOM_VIDEO_THUMBNAIL:Ljava/lang/String;

    .line 26
    const-string v0, "pref_learnt_signing_libs_unsupported"

    sput-object v0, Lio/casper/android/l/l;->SIGNING_LIBS_UNSUPPORTED:Ljava/lang/String;

    .line 27
    const-string v0, "pref_learnt_viewer_swipe_navigate_stories"

    sput-object v0, Lio/casper/android/l/l;->VIEWER_SWIPE_NAVIGATE_STORIES:Ljava/lang/String;

    .line 28
    const-string v0, "pref_learnt_viewer_swipe_navigate_saved_snaps"

    sput-object v0, Lio/casper/android/l/l;->VIEWER_SWIPE_NAVIGATE_SAVED_SNAPS:Ljava/lang/String;

    .line 29
    const-string v0, "pref_learnt_custom_story_privacy"

    sput-object v0, Lio/casper/android/l/l;->CUSTOM_STORY_PRIVACY:Ljava/lang/String;

    .line 31
    const-string v0, "pref_learnt_old_casper_check"

    sput-object v0, Lio/casper/android/l/l;->OLD_CASPER_CHECK:Ljava/lang/String;

    .line 32
    const-string v0, "pref_learnt_database_init"

    sput-object v0, Lio/casper/android/l/l;->DATABASE_INIT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lio/casper/android/l/l;

    invoke-direct {v0, p0}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, p1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, p1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/gc/materialdesign/widgets/SnackBar;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070042

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/casper/android/l/l$1;

    invoke-direct {v4}, Lio/casper/android/l/l$1;-><init>()V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/gc/materialdesign/widgets/SnackBar;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lcom/gc/materialdesign/widgets/SnackBar;->setDismissTimer(I)V

    .line 63
    invoke-virtual {v1}, Lcom/gc/materialdesign/widgets/SnackBar;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/casper/android/l/l;->c(Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/l/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
