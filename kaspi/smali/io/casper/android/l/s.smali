.class public Lio/casper/android/l/s;
.super Lio/casper/android/l/a/a;
.source "SnapchatAccountManager.java"


# static fields
.field private static final PREFERENCE_ACCOUNTS_ACTIVE_ID:Ljava/lang/String; = "pref_accounts_active_id"

.field private static final PREFERENCE_ACCOUNTS_DTOKEN1I:Ljava/lang/String; = "pref_accounts_dtoken1i"

.field private static final PREFERENCE_ACCOUNTS_DTOKEN1V:Ljava/lang/String; = "pref_accounts_dtoken1v"

.field private static final PREFERENCE_ACCOUNTS_LAST_PASSWORD:Ljava/lang/String; = "pref_accounts_last_password"

.field private static final PREFERENCE_ACCOUNTS_LAST_SNAP_DURATION:Ljava/lang/String; = "pref_accounts_last_snap_duration"

.field private static final PREFERENCE_ACCOUNTS_LAST_USERNAME:Ljava/lang/String; = "pref_accounts_last_username"

.field private static final PREFERENCE_ACCOUNTS_RECEIVED:Ljava/lang/String; = "pref_accounts_received"

.field private static final PREFERENCE_ACCOUNTS_SCORE:Ljava/lang/String; = "pref_accounts_score"

.field private static final PREFERENCE_ACCOUNTS_SENT:Ljava/lang/String; = "pref_accounts_sent"


# instance fields
.field private mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

.field private mSnapchatAccountsTable:Lio/casper/android/e/c/a;

.field private mZeltaTable:Lio/casper/android/n/c/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lio/casper/android/e/c/a;->i()Lio/casper/android/e/c/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/s;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    .line 43
    invoke-static {}, Lio/casper/android/n/c/a/b;->i()Lio/casper/android/n/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/s;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    .line 44
    invoke-static {}, Lio/casper/android/n/c/a/i;->i()Lio/casper/android/n/c/a/i;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/l/s;->mZeltaTable:Lio/casper/android/n/c/a/i;

    .line 46
    return-void
.end method

.method static synthetic a(Lio/casper/android/l/s;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lio/casper/android/l/s;->p()V

    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    invoke-virtual {p0}, Lio/casper/android/l/s;->j()Lio/casper/android/e/b/b;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lio/casper/android/l/s;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v1, v0}, Lio/casper/android/e/c/a;->d(Lio/casper/android/e/a/d;)V

    .line 146
    :cond_0
    invoke-virtual {p0, v2, v3}, Lio/casper/android/l/s;->b(J)V

    .line 147
    invoke-virtual {p0, v2, v3}, Lio/casper/android/l/s;->c(J)V

    .line 148
    invoke-virtual {p0, v2, v3}, Lio/casper/android/l/s;->d(J)V

    .line 150
    iget-object v0, p0, Lio/casper/android/l/s;->mBackgroundUploadsTable:Lio/casper/android/n/c/a/b;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/b;->f()V

    .line 152
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 85
    const-string v0, "pref_accounts_active_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/s;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 77
    const-string v0, "pref_accounts_last_snap_duration"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/s;->c(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "pref_accounts_active_id"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/s;->b(Ljava/lang/String;J)V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "pref_accounts_dtoken1i"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const-string v0, "pref_accounts_dtoken1i"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 69
    const-string v0, "pref_accounts_score"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/s;->b(Ljava/lang/String;J)V

    .line 70
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    const-string v0, "pref_accounts_last_username"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    const-string v0, "pref_accounts_last_username"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "pref_accounts_sent"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/s;->b(Ljava/lang/String;J)V

    .line 74
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    const-string v0, "pref_accounts_last_password"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const-string v0, "pref_accounts_last_password"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 81
    const-string v0, "pref_accounts_received"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/s;->b(Ljava/lang/String;J)V

    .line 82
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    const-string v0, "pref_accounts_dtoken1v"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public e(Ljava/lang/String;)Lio/casper/android/e/b/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lio/casper/android/l/s;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v0, p1}, Lio/casper/android/e/c/a;->a(Ljava/lang/String;)Lio/casper/android/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-string v0, "pref_accounts_dtoken1v"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 105
    const-string v0, "pref_accounts_score"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/s;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {v0, p1}, Lio/casper/android/l/h;->b(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    const-string v1, "REPLY_SNAP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method public g()J
    .locals 4

    .prologue
    .line 109
    const-string v0, "pref_accounts_sent"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/s;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    .line 246
    sget-object v1, Lio/casper/android/l/l;->HOLD_SNAP_REPLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    sget-object v1, Lio/casper/android/l/l;->HOLD_SNAP_REPLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 250
    const v1, 0x7f0700b4

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 251
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 252
    new-instance v1, Lio/casper/android/l/s$2;

    invoke-direct {v1, p0, p1}, Lio/casper/android/l/s$2;-><init>(Lio/casper/android/l/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 258
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lio/casper/android/l/s;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()J
    .locals 4

    .prologue
    .line 113
    const-string v0, "pref_accounts_received"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/s;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v0, p1}, Lio/casper/android/l/h;->b(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    return-void
.end method

.method public i()I
    .locals 2

    .prologue
    .line 117
    const-string v0, "pref_accounts_last_snap_duration"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/s;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j()Lio/casper/android/e/b/b;
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lio/casper/android/l/s;->a()J

    move-result-wide v0

    .line 123
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lio/casper/android/l/s;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v2, v0, v1}, Lio/casper/android/e/c/a;->a(J)Lio/casper/android/e/a/d;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/b;

    .line 125
    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lio/casper/android/l/s;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i;->f()V

    .line 158
    const-string v0, ""

    invoke-virtual {p0, v0}, Lio/casper/android/l/s;->b(Ljava/lang/String;)V

    .line 159
    const-string v0, ""

    invoke-virtual {p0, v0}, Lio/casper/android/l/s;->c(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lio/casper/android/l/s;->p()V

    .line 162
    invoke-virtual {p0}, Lio/casper/android/l/s;->n()V

    .line 164
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lio/casper/android/l/s;->mZeltaTable:Lio/casper/android/n/c/a/i;

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i;->f()V

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/casper/android/l/s$1;

    invoke-direct {v1, p0}, Lio/casper/android/l/s$1;-><init>(Lio/casper/android/l/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method public m()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    return-object v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lio/casper/android/l/s;->m()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lio/casper/android/l/h;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/h;-><init>(Landroid/content/Context;)V

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/l/h;->b(Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const-string v1, "SNAP_SENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    iget-object v0, p0, Lio/casper/android/l/s;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 214
    return-void
.end method
