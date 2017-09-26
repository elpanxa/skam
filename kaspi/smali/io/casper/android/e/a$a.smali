.class public final enum Lio/casper/android/e/a$a;
.super Ljava/lang/Enum;
.source "CasperDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/e/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/e/a$a;

.field public static final enum CASPER_SNAPCHAT_ACCOUNTS:Lio/casper/android/e/a$a;


# instance fields
.field private mDatabaseTable:Lio/casper/android/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v0, Lio/casper/android/e/a$a;

    const-string v1, "CASPER_SNAPCHAT_ACCOUNTS"

    invoke-static {}, Lio/casper/android/e/c/a;->i()Lio/casper/android/e/c/a;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lio/casper/android/e/a$a;-><init>(Ljava/lang/String;ILio/casper/android/e/b;)V

    sput-object v0, Lio/casper/android/e/a$a;->CASPER_SNAPCHAT_ACCOUNTS:Lio/casper/android/e/a$a;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lio/casper/android/e/a$a;

    sget-object v1, Lio/casper/android/e/a$a;->CASPER_SNAPCHAT_ACCOUNTS:Lio/casper/android/e/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lio/casper/android/e/a$a;->$VALUES:[Lio/casper/android/e/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/casper/android/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/e/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lio/casper/android/e/a$a;->mDatabaseTable:Lio/casper/android/e/b;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/e/a$a;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lio/casper/android/e/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/a$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/e/a$a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lio/casper/android/e/a$a;->$VALUES:[Lio/casper/android/e/a$a;

    invoke-virtual {v0}, [Lio/casper/android/e/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/e/a$a;

    return-object v0
.end method


# virtual methods
.method public final getTable()Lio/casper/android/e/b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lio/casper/android/e/a$a;->mDatabaseTable:Lio/casper/android/e/b;

    return-object v0
.end method
