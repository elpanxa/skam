.class public Lcom/startapp/android/publish/h/l;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/publish/h/l;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/android/publish/h/l;->a:Lcom/startapp/android/publish/h/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "e106"

    iput-object v0, p0, Lcom/startapp/android/publish/h/l;->c:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/startapp/android/publish/h/l$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/h/l$1;-><init>(Lcom/startapp/android/publish/h/l;)V

    iput-object v0, p0, Lcom/startapp/android/publish/h/l;->d:Landroid/telephony/PhoneStateListener;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/h/l;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a()Lcom/startapp/android/publish/h/l;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/startapp/android/publish/h/l;->a:Lcom/startapp/android/publish/h/l;

    return-object v0
.end method

.method static synthetic a(Lcom/startapp/android/publish/h/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/startapp/android/publish/h/l;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 34
    iget-object v1, p0, Lcom/startapp/android/publish/h/l;->d:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/startapp/android/publish/h/l;->a:Lcom/startapp/android/publish/h/l;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/startapp/android/publish/h/l;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/h/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/startapp/android/publish/h/l;->a:Lcom/startapp/android/publish/h/l;

    .line 41
    invoke-static {}, Lcom/startapp/android/publish/h/l;->a()Lcom/startapp/android/publish/h/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/h/l;->a(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/h/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/h/l;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/h/l;->a(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/h/l;->a(Landroid/content/Context;I)V

    .line 29
    return-void
.end method
