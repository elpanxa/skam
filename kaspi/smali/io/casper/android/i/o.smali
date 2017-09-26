.class public Lio/casper/android/i/o;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final ABOUT_DEVELOPER:Ljava/lang/String; = "pref_key_about_developer"

.field public static final ABOUT_VERSION:Ljava/lang/String; = "pref_key_about_version"

.field public static final ABOUT_VERSION_SNAPCHAT:Ljava/lang/String; = "pref_key_about_version_snapchat"

.field public static final AUTOSAVE_SNAPS_SENT:Ljava/lang/String; = "pref_key_autosave_snaps_sent"

.field public static final AUTOSAVE_SNAPS_WHEN_DOWNLOADED:Ljava/lang/String; = "pref_key_autosave_snaps_when_downloaded"

.field public static final AUTOSAVE_SNAPS_WHEN_OPENED:Ljava/lang/String; = "pref_key_autosave_snaps_when_opened"

.field public static final AUTOSAVE_STORIES_WHEN_DOWNLOADED:Ljava/lang/String; = "pref_key_autosave_stories_when_downloaded"

.field public static final AUTOSAVE_STORIES_WHEN_OPENED:Ljava/lang/String; = "pref_key_autosave_stories_when_opened"

.field public static final CATEGORY_ABOUT:Ljava/lang/String; = "pref_key_category_about"

.field public static final CATEGORY_AUTODOWNLOAD:Ljava/lang/String; = "pref_key_category_autodownload"

.field public static final CATEGORY_AUTOSAVE:Ljava/lang/String; = "pref_key_category_autosave"

.field public static final CATEGORY_AUTOVIEW:Ljava/lang/String; = "pref_key_category_autoview"

.field public static final CATEGORY_CAMERA:Ljava/lang/String; = "pref_key_category_camera"

.field public static final CATEGORY_DISPLAY:Ljava/lang/String; = "pref_key_category_display"

.field public static final CATEGORY_NOTIFICATIONS:Ljava/lang/String; = "pref_key_category_notifications"

.field public static final CATEGORY_SECURITY:Ljava/lang/String; = "pref_key_category_security"

.field public static final CATEGORY_SNAPCHAT:Ljava/lang/String; = "pref_key_category_snapchat"

.field public static final CATEGORY_TAG:Ljava/lang/String; = "settings_category_fragment_tag"

.field public static final DONATE:Ljava/lang/String; = "pref_key_donate"

.field public static final NOTIFICATIONS_ENABLED:Ljava/lang/String; = "pref_key_notifications_enabled"

.field public static final NOTIFICATIONS_INTERVAL:Ljava/lang/String; = "pref_key_notifications_interval"

.field public static final NOTIFICATIONS_LED:Ljava/lang/String; = "pref_key_notifications_led"

.field public static final NOTIFICATIONS_SOUND:Ljava/lang/String; = "pref_key_notifications_sound"

.field public static final NOTIFICATIONS_VIBRATE:Ljava/lang/String; = "pref_key_notifications_vibrate"

.field public static final SECURITY:Ljava/lang/String; = "pref_key_security"

.field public static final SECURITY_REMEMBER_PASSWORDS:Ljava/lang/String; = "pref_key_security_remember_passwords"

.field public static final SNAPCHAT:Ljava/lang/String; = "pref_key_snapchat"

.field public static final SNAPCHAT_WHO_CAN_SEND_ME_SNAPS:Ljava/lang/String; = "pref_key_snapchat_who_can_send_me_snaps"

.field public static final SNAPCHAT_WHO_CAN_VIEW_MY_STORIES:Ljava/lang/String; = "pref_key_snapchat_who_can_view_my_stories"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Lio/casper/android/activity/SettingsActivity;

.field private mResource:I

.field private mSnapchatManager:Lio/casper/android/l/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 26
    const-string v0, "SettingsFragment"

    iput-object v0, p0, Lio/casper/android/i/o;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lio/casper/android/i/o;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lio/casper/android/i/o;

    invoke-direct {v0}, Lio/casper/android/i/o;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v2, "category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v0, v1}, Lio/casper/android/i/o;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v4, 0x7f050001

    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lio/casper/android/i/o;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lio/casper/android/i/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/SettingsActivity;

    iput-object v0, p0, Lio/casper/android/i/o;->mContext:Lio/casper/android/activity/SettingsActivity;

    .line 115
    new-instance v0, Lio/casper/android/l/t;

    iget-object v2, p0, Lio/casper/android/i/o;->mContext:Lio/casper/android/activity/SettingsActivity;

    invoke-direct {v0, v2}, Lio/casper/android/l/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/i/o;->mSnapchatManager:Lio/casper/android/l/t;

    .line 117
    if-nez v1, :cond_2

    .line 118
    iput v4, p0, Lio/casper/android/i/o;->mResource:I

    .line 123
    :goto_0
    iget v0, p0, Lio/casper/android/i/o;->mResource:I

    invoke-virtual {p0, v0}, Lio/casper/android/i/o;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lio/casper/android/i/o;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move v2, v3

    .line 126
    :goto_1
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 128
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    instance-of v1, v0, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    .line 134
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 135
    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    move v4, v3

    .line 139
    :goto_2
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 141
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    instance-of v7, v1, Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_1

    .line 146
    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 120
    :cond_2
    const-string v0, "category"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/casper/android/i/o;->mResource:I

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 154
    :cond_5
    const-string v0, "pref_key_about_version"

    invoke-virtual {p0, v0}, Lio/casper/android/i/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_6

    .line 156
    invoke-static {}, Lio/casper/android/CasperApplication;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :cond_6
    const-string v1, "pref_key_about_version_snapchat"

    invoke-virtual {p0, v1}, Lio/casper/android/i/o;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 160
    if-eqz v0, :cond_7

    .line 161
    iget-object v0, p0, Lio/casper/android/i/o;->mSnapchatManager:Lio/casper/android/l/t;

    invoke-virtual {v0}, Lio/casper/android/l/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    :cond_7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lio/casper/android/i/o;->mContext:Lio/casper/android/activity/SettingsActivity;

    invoke-virtual {v1}, Lio/casper/android/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    iget v1, p0, Lio/casper/android/i/o;->mResource:I

    const v2, 0x7f050001

    if-ne v1, v2, :cond_0

    .line 103
    :cond_0
    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 209
    if-nez p2, :cond_0

    const-string v0, "null"

    .line 211
    :goto_0
    const-string v2, "SettingsFragment"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " newValue: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return v7

    .line 209
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v4, v2

    :goto_1
    packed-switch v4, :pswitch_data_0

    move v4, v1

    .line 263
    :goto_2
    if-eqz v4, :cond_1

    .line 264
    invoke-static {v4}, Lio/casper/android/i/o;->a(I)Lio/casper/android/i/o;

    move-result-object v4

    .line 265
    invoke-virtual {p0}, Lio/casper/android/i/o;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0c00e4

    const-string v7, "settings_category_fragment_tag"

    invoke-virtual {v5, v6, v4, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 268
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_2
    move v0, v2

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 282
    :goto_4
    :pswitch_0
    return v1

    .line 220
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 224
    :sswitch_0
    const-string v4, "pref_key_category_autodownload"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "pref_key_category_autosave"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :sswitch_2
    const-string v4, "pref_key_category_autoview"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "pref_key_category_camera"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "pref_key_category_display"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "pref_key_category_notifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "pref_key_category_security"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "pref_key_category_snapchat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "pref_key_category_about"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_1

    .line 226
    :pswitch_1
    const v4, 0x7f050003

    .line 227
    goto/16 :goto_2

    .line 230
    :pswitch_2
    const v4, 0x7f050004

    .line 231
    goto/16 :goto_2

    .line 234
    :pswitch_3
    const v4, 0x7f050005

    .line 235
    goto/16 :goto_2

    .line 238
    :pswitch_4
    const v4, 0x7f050006

    .line 239
    goto/16 :goto_2

    .line 242
    :pswitch_5
    const v4, 0x7f050007

    .line 243
    goto/16 :goto_2

    .line 246
    :pswitch_6
    const v4, 0x7f050008

    .line 247
    goto/16 :goto_2

    .line 250
    :pswitch_7
    const v4, 0x7f050009

    .line 251
    goto/16 :goto_2

    .line 254
    :pswitch_8
    const v4, 0x7f05000a

    .line 255
    goto/16 :goto_2

    .line 258
    :pswitch_9
    const v4, 0x7f050002

    goto/16 :goto_2

    .line 268
    :sswitch_9
    const-string v3, "pref_key_donate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto/16 :goto_3

    :sswitch_a
    const-string v4, "pref_key_about_developer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto/16 :goto_3

    .line 276
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.liamcottle.com/?ref=casperapp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lio/casper/android/i/o;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77f6931d -> :sswitch_5
        -0x6b13b703 -> :sswitch_4
        0x8926547 -> :sswitch_7
        0x174843dc -> :sswitch_0
        0x30314e65 -> :sswitch_6
        0x4d6e06d1 -> :sswitch_1
        0x4d6f7ff9 -> :sswitch_2
        0x55c12688 -> :sswitch_8
        0x65be1f8a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 268
    :sswitch_data_1
    .sparse-switch
        0x3cd5cf9c -> :sswitch_a
        0x559e9feb -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lio/casper/android/i/o;->mContext:Lio/casper/android/activity/SettingsActivity;

    invoke-static {v0, p1}, Lio/casper/android/util/l;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 203
    return-void
.end method
