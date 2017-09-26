.class public Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;
.super Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;
.source "LinearListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;,
        Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final LinearListView_dividerThickness:I = 0x1

.field private static final LinearListView_entries:I

.field private static final R_styleable_LinearListView:[I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAreAllItemsSelectable:Z

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEmptyView:Landroid/view/View;

.field private mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/heinrichreimersoftware/materialdrawer/R$attr;->dividerThickness:I

    aput v2, v0, v1

    sput-object v0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->R_styleable_LinearListView:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$1;

    invoke-direct {v0, p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$1;-><init>(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)V

    iput-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 70
    sget-object v0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->R_styleable_LinearListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setDividerThickness(I)V

    .line 80
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setupChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private setupChildren()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->removeAllViews()V

    .line 230
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->updateEmptyStatus(Z)V

    .line 232
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_3

    .line 243
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 230
    goto :goto_0

    .line 236
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    iget-boolean v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 239
    :cond_4
    new-instance v3, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;

    invoke-direct {v3, p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$InternalOnClickListener;-><init>(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_5
    const/4 v3, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateEmptyStatus(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 210
    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_2
    invoke-virtual {p0, v1}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    return-object v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->playSoundEffect(I)V

    .line 174
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;->onItemClick(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;Landroid/view/View;IJ)V

    .line 175
    const/4 v0, 0x1

    .line 178
    :cond_0
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 135
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 137
    iget-object v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mAreAllItemsSelectable:Z

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->setupChildren()V

    .line 142
    return-void
.end method

.method public setDividerThickness(I)V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDividerHeight:I

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->requestLayout()V

    .line 114
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDividerWidth:I

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mEmptyView:Landroid/view/View;

    .line 198
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 200
    :goto_0
    invoke-direct {p0, v0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->updateEmptyStatus(Z)V

    .line 201
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mOnItemClickListener:Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView$OnItemClickListener;

    .line 160
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->getOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 93
    iget v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDividerHeight:I

    .line 94
    iget v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDividerWidth:I

    iput v1, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDividerHeight:I

    .line 95
    iput v0, p0, Lcom/heinrichreimersoftware/materialdrawer/widget/LinearListView;->mDividerWidth:I

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/heinrichreimersoftware/materialdrawer/widget/IcsLinearLayout;->setOrientation(I)V

    .line 98
    return-void
.end method
