.class public Lio/casper/android/activity/UsernameSavedSnapsActivity;
.super Lio/casper/android/activity/a/a;
.source "UsernameSavedSnapsActivity.java"


# static fields
.field public static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mLearnManager:Lio/casper/android/l/l;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUsername:Ljava/lang/String;

.field private mUsernameSavedSnapsAdapter:Lio/casper/android/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/UsernameSavedSnapsActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/UsernameSavedSnapsActivity;)Lio/casper/android/a/a/i;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mUsernameSavedSnapsAdapter:Lio/casper/android/a/a/i;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mAdManager:Lio/casper/android/l/a;

    .line 49
    new-instance v0, Lio/casper/android/l/l;

    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mLearnManager:Lio/casper/android/l/l;

    .line 51
    invoke-virtual {p0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mUsername:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mDisplay:Ljava/lang/String;

    .line 54
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mGridView:Landroid/widget/GridView;

    .line 57
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    invoke-virtual {p0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mDisplay:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v0, Lio/casper/android/a/a/i;

    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mDisplay:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lio/casper/android/a/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mUsernameSavedSnapsAdapter:Lio/casper/android/a/a/i;

    .line 63
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mUsernameSavedSnapsAdapter:Lio/casper/android/a/a/i;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 67
    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 68
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 70
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 72
    new-instance v0, Lio/casper/android/o/h;

    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mUsername:Ljava/lang/String;

    new-instance v3, Lio/casper/android/activity/UsernameSavedSnapsActivity$1;

    invoke-direct {v3, p0}, Lio/casper/android/activity/UsernameSavedSnapsActivity$1;-><init>(Lio/casper/android/activity/UsernameSavedSnapsActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lio/casper/android/o/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/casper/android/o/h$a;)V

    new-array v1, v4, [Ljava/lang/Void;

    .line 83
    invoke-virtual {v0, v1}, Lio/casper/android/o/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    iget-object v1, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 86
    iget-object v0, p0, Lio/casper/android/activity/UsernameSavedSnapsActivity;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v0}, Lio/casper/android/l/a;->s()V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    invoke-virtual {p0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 96
    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/UsernameSavedSnapsActivity;->finish()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
