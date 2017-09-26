.class public Lio/casper/android/activity/OldSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "OldSettingsActivity.java"


# static fields
.field private static final REQUEST_STORY_PRIVACY:I = 0x3e8


# instance fields
.field private mAboutVersionPreference:Landroid/preference/Preference;

.field private mAccountManager:Lio/casper/android/l/s;

.field private mClearCachePreference:Landroid/preference/Preference;

.field mClearConversationsPreference:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCustomVideoThumbnailPreference:Landroid/preference/Preference;

.field private mInternalCacheManager:Lio/casper/android/l/k;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mMediaDirectoryPreference:Landroid/preference/Preference;

.field private mMediaManager:Lio/casper/android/l/n;

.field private mRoutingManager:Lio/casper/android/l/p;

.field private mSettingsManager:Lio/casper/android/l/r;

.field private mSnapchatManager:Lio/casper/android/l/t;

.field private mSnapsPrivacyPreference:Landroid/preference/Preference;

.field private mStoriesPrivacyPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lio/casper/android/activity/OldSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/casper/android/activity/OldSettingsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 331
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 345
    :goto_1
    return-void

    .line 331
    :pswitch_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSnapsPrivacyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0701a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 339
    :pswitch_3
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSnapsPrivacyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0701ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/n;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaManager:Lio/casper/android/l/n;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/OldSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/casper/android/activity/OldSettingsActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 349
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_1
    return-void

    .line 349
    :sswitch_0
    const-string v1, "EVERYONE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "FRIENDS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "CUSTOM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mStoriesPrivacyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0701a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 357
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mStoriesPrivacyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0701ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 362
    :pswitch_2
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mStoriesPrivacyPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070193

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x706d575 -> :sswitch_1
        0x3f74916b -> :sswitch_0
        0x77297f71 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lio/casper/android/activity/OldSettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaDirectoryPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/s;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mAccountManager:Lio/casper/android/l/s;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/k;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/l;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mLearnManager:Lio/casper/android/l/l;

    return-object v0
.end method

.method static synthetic g(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/p;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mRoutingManager:Lio/casper/android/l/p;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Casper v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/casper/android/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v1}, Lio/casper/android/l/t;->m()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mAboutVersionPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaDirectoryPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaManager:Lio/casper/android/l/n;

    iget-object v1, v1, Lio/casper/android/l/n;->mMainFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->y()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->a(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSettingsManager:Lio/casper/android/l/r;

    invoke-virtual {v0}, Lio/casper/android/l/r;->z()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->b(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 311
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 316
    :pswitch_0
    const-string v0, "usernames"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    new-instance v1, Lio/casper/android/n/a/b/u;

    iget-object v2, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    const-string v3, "CUSTOM"

    invoke-direct {v1, v2, v3, v0}, Lio/casper/android/n/a/b/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lio/casper/android/n/a/b/u;->m()V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 64
    new-instance v0, Lio/casper/android/l/n;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaManager:Lio/casper/android/l/n;

    .line 65
    new-instance v0, Lio/casper/android/l/k;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mInternalCacheManager:Lio/casper/android/l/k;

    .line 66
    new-instance v0, Lio/casper/android/l/p;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mRoutingManager:Lio/casper/android/l/p;

    .line 67
    new-instance v0, Lio/casper/android/l/s;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mAccountManager:Lio/casper/android/l/s;

    .line 68
    new-instance v0, Lio/casper/android/l/t;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSnapchatManager:Lio/casper/android/l/t;

    .line 69
    new-instance v0, Lio/casper/android/l/r;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSettingsManager:Lio/casper/android/l/r;

    .line 71
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->addPreferencesFromResource(I)V

    .line 73
    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaDirectoryPreference:Landroid/preference/Preference;

    .line 74
    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mClearCachePreference:Landroid/preference/Preference;

    .line 75
    const-string v0, "account_clear_conversations"

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mClearConversationsPreference:Landroid/preference/Preference;

    .line 76
    const-string v0, "about_version"

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mAboutVersionPreference:Landroid/preference/Preference;

    .line 77
    const v0, 0x7f070150

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mCustomVideoThumbnailPreference:Landroid/preference/Preference;

    .line 79
    const v0, 0x7f07015c

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSnapsPrivacyPreference:Landroid/preference/Preference;

    .line 80
    const v0, 0x7f07015d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mStoriesPrivacyPreference:Landroid/preference/Preference;

    .line 82
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mMediaDirectoryPreference:Landroid/preference/Preference;

    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$1;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mClearCachePreference:Landroid/preference/Preference;

    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$2;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$2;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mClearConversationsPreference:Landroid/preference/Preference;

    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$3;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$3;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mCustomVideoThumbnailPreference:Landroid/preference/Preference;

    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$4;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$4;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 230
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mSnapsPrivacyPreference:Landroid/preference/Preference;

    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$5;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$5;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity;->mStoriesPrivacyPreference:Landroid/preference/Preference;

    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$6;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$6;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    invoke-virtual {p0}, Lio/casper/android/activity/OldSettingsActivity;->a()V

    .line 268
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 295
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lio/casper/android/activity/OldSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 296
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03008e

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 297
    invoke-virtual {p0}, Lio/casper/android/activity/OldSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 298
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 299
    new-instance v0, Lio/casper/android/activity/OldSettingsActivity$7;

    invoke-direct {v0, p0}, Lio/casper/android/activity/OldSettingsActivity$7;-><init>(Lio/casper/android/activity/OldSettingsActivity;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method
