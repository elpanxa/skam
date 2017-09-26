.class public Lio/casper/android/activity/SavedSnapsActivity;
.super Lio/casper/android/activity/a/a;
.source "SavedSnapsActivity.java"


# instance fields
.field private mAdManager:Lio/casper/android/l/a;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mSavedSnapsAdapter:Lio/casper/android/a/a/e;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lio/casper/android/activity/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/activity/SavedSnapsActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/activity/SavedSnapsActivity;)Lio/casper/android/a/a/e;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mSavedSnapsAdapter:Lio/casper/android/a/a/e;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SavedSnapsActivity;->setContentView(I)V

    .line 39
    iput-object p0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lio/casper/android/l/a;

    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mAdManager:Lio/casper/android/l/a;

    .line 42
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SavedSnapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 43
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SavedSnapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mGridView:Landroid/widget/GridView;

    .line 45
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SavedSnapsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 46
    invoke-virtual {p0}, Lio/casper/android/activity/SavedSnapsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    new-instance v0, Lio/casper/android/a/a/e;

    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mSavedSnapsAdapter:Lio/casper/android/a/a/e;

    .line 49
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mSavedSnapsAdapter:Lio/casper/android/a/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 53
    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 54
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 56
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mProgressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 58
    new-instance v0, Lio/casper/android/o/g;

    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lio/casper/android/activity/SavedSnapsActivity$1;

    invoke-direct {v2, p0}, Lio/casper/android/activity/SavedSnapsActivity$1;-><init>(Lio/casper/android/activity/SavedSnapsActivity;)V

    invoke-direct {v0, v1, v2}, Lio/casper/android/o/g;-><init>(Landroid/content/Context;Lio/casper/android/o/g$a;)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 69
    invoke-virtual {v0, v1}, Lio/casper/android/o/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    iget-object v1, p0, Lio/casper/android/activity/SavedSnapsActivity;->mAdManager:Lio/casper/android/l/a;

    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lio/casper/android/activity/SavedSnapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;)V

    .line 72
    iget-object v0, p0, Lio/casper/android/activity/SavedSnapsActivity;->mAdManager:Lio/casper/android/l/a;

    invoke-virtual {v0}, Lio/casper/android/l/a;->s()V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lio/casper/android/activity/a/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 81
    invoke-virtual {p0}, Lio/casper/android/activity/SavedSnapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 82
    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lio/casper/android/activity/SavedSnapsActivity;->finish()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
