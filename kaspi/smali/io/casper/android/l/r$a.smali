.class public final enum Lio/casper/android/l/r$a;
.super Ljava/lang/Enum;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/l/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/l/r$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/l/r$a;

.field public static final enum CASPER:Lio/casper/android/l/r$a;

.field public static final enum INSTALLED_APP:Lio/casper/android/l/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    new-instance v0, Lio/casper/android/l/r$a;

    const-string v1, "CASPER"

    invoke-direct {v0, v1, v2}, Lio/casper/android/l/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/l/r$a;->CASPER:Lio/casper/android/l/r$a;

    new-instance v0, Lio/casper/android/l/r$a;

    const-string v1, "INSTALLED_APP"

    invoke-direct {v0, v1, v3}, Lio/casper/android/l/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/l/r$a;->INSTALLED_APP:Lio/casper/android/l/r$a;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Lio/casper/android/l/r$a;

    sget-object v1, Lio/casper/android/l/r$a;->CASPER:Lio/casper/android/l/r$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/l/r$a;->INSTALLED_APP:Lio/casper/android/l/r$a;

    aput-object v1, v0, v3

    sput-object v0, Lio/casper/android/l/r$a;->$VALUES:[Lio/casper/android/l/r$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/l/r$a;
    .locals 1

    .prologue
    .line 165
    const-class v0, Lio/casper/android/l/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/l/r$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/l/r$a;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lio/casper/android/l/r$a;->$VALUES:[Lio/casper/android/l/r$a;

    invoke-virtual {v0}, [Lio/casper/android/l/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/l/r$a;

    return-object v0
.end method
