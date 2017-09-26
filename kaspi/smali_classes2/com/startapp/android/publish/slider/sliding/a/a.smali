.class public Lcom/startapp/android/publish/slider/sliding/a/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/slider/sliding/a/a$d;,
        Lcom/startapp/android/publish/slider/sliding/a/a$c;,
        Lcom/startapp/android/publish/slider/sliding/a/a$a;,
        Lcom/startapp/android/publish/slider/sliding/a/a$e;,
        Lcom/startapp/android/publish/slider/sliding/a/a$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/startapp/android/publish/slider/sliding/a/a$b;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 720
    const-string v0, "JellyBeanMR2"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/a$d;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/a/a$d;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    .line 729
    :goto_0
    return-void

    .line 722
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 723
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/a$c;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/a/a$c;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    goto :goto_0

    .line 724
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 725
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/a$a;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/a/a$a;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    goto :goto_0

    .line 727
    :cond_2
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/a$e;

    invoke-direct {v0}, Lcom/startapp/android/publish/slider/sliding/a/a$e;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    .line 1044
    return-void
.end method

.method public static a(Lcom/startapp/android/publish/slider/sliding/a/a;)Lcom/startapp/android/publish/slider/sliding/a/a;
    .locals 2

    .prologue
    .line 1096
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Ljava/lang/Object;)Lcom/startapp/android/publish/slider/sliding/a/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Lcom/startapp/android/publish/slider/sliding/a/a;
    .locals 1

    .prologue
    .line 1030
    if-eqz p0, :cond_0

    .line 1031
    new-instance v0, Lcom/startapp/android/publish/slider/sliding/a/a;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/slider/sliding/a/a;-><init>(Ljava/lang/Object;)V

    .line 1033
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1938
    sparse-switch p0, :sswitch_data_0

    .line 1976
    const-string v0, "ACTION_UNKNOWN"

    :goto_0
    return-object v0

    .line 1940
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_0

    .line 1942
    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    .line 1944
    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_0

    .line 1946
    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_0

    .line 1948
    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_0

    .line 1950
    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_0

    .line 1952
    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 1954
    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 1956
    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 1958
    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 1960
    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    .line 1962
    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    .line 1964
    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    .line 1966
    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    .line 1968
    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_0

    .line 1970
    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_0

    .line 1972
    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_0

    .line 1974
    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_0

    .line 1938
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1257
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->a(Ljava/lang/Object;I)V

    .line 1258
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1400
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1401
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1105
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 1106
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1753
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1754
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1511
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->c(Ljava/lang/Object;Z)V

    .line 1512
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 1242
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1415
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1416
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1211
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1212
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1777
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1778
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 1535
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->d(Ljava/lang/Object;Z)V

    .line 1536
    return-void
.end method

.method public c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1424
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1425
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1368
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 1369
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1825
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1826
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 1560
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->g(Ljava/lang/Object;Z)V

    .line 1561
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1448
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1439
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1440
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 1585
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->h(Ljava/lang/Object;Z)V

    .line 1586
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1472
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 1609
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->f(Ljava/lang/Object;Z)V

    .line 1610
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1496
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1874
    if-ne p0, p1, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return v0

    .line 1877
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1878
    goto :goto_0

    .line 1880
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1881
    goto :goto_0

    .line 1883
    :cond_3
    check-cast p1, Lcom/startapp/android/publish/slider/sliding/a/a;

    .line 1884
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1885
    iget-object v2, p1, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1886
    goto :goto_0

    .line 1888
    :cond_4
    iget-object v2, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1889
    goto :goto_0
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 1633
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->a(Ljava/lang/Object;Z)V

    .line 1634
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1520
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 1657
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->e(Ljava/lang/Object;Z)V

    .line 1658
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 1544
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 1681
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->b(Ljava/lang/Object;Z)V

    .line 1682
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 1569
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1594
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 1618
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 1642
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 1666
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 1690
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 1714
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1738
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1762
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1786
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1810
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 1836
    sget-object v0, Lcom/startapp/android/publish/slider/sliding/a/a;->a:Lcom/startapp/android/publish/slider/sliding/a/a$b;

    iget-object v1, p0, Lcom/startapp/android/publish/slider/sliding/a/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/slider/sliding/a/a$b;->q(Ljava/lang/Object;)V

    .line 1837
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1901
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->a(Landroid/graphics/Rect;)V

    .line 1902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/slider/sliding/a/a;->c(Landroid/graphics/Rect;)V

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    const-string v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->o()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1908
    const-string v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->p()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1909
    const-string v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1910
    const-string v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->r()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1912
    const-string v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1913
    const-string v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1914
    const-string v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1915
    const-string v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->f()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1916
    const-string v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1917
    const-string v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1918
    const-string v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1919
    const-string v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->l()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1920
    const-string v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    const-string v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    invoke-virtual {p0}, Lcom/startapp/android/publish/slider/sliding/a/a;->b()I

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1925
    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    .line 1926
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 1927
    invoke-static {v2}, Lcom/startapp/android/publish/slider/sliding/a/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    if-eqz v0, :cond_0

    .line 1929
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1932
    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
