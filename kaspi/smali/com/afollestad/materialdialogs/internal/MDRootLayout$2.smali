.class Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;
.super Ljava/lang/Object;
.source "MDRootLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 433
    .line 434
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    # getter for: Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;
    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 435
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 436
    const/4 v0, 0x1

    move v1, v0

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 441
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    check-cast v0, Landroid/webkit/WebView;

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    # invokes: Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    invoke-static {v2, v0, v3, v4, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V

    .line 445
    :goto_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 446
    return-void

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    # invokes: Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    invoke-static {v0, v2, v3, v4, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1
.end method
