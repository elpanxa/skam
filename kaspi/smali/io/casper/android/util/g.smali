.class public Lio/casper/android/util/g;
.super Ljava/lang/Object;
.source "SavedSnapFilenameParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SavedSnapFilenameParser"


# instance fields
.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/casper/android/util/g;->mUsername:Ljava/lang/String;

    .line 16
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "([A-Za-z0-9-._]+)([_])(\\d+r)"

    aput-object v2, v1, v0

    const-string v2, "([A-Za-z0-9-._]+)[_][\\w~\\d_\\d]"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "([A-Za-z0-9-._]+)[_](\\d.+r)"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "([A-Za-z0-9-._]+)[_](\\d.+)"

    aput-object v3, v1, v2

    .line 23
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 25
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 26
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 30
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/casper/android/util/g;->mUsername:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    return-void

    .line 32
    :catch_0
    move-exception v3

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/casper/android/util/g;->mUsername:Ljava/lang/String;

    return-object v0
.end method
