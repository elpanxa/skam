.class final enum Lcom/startapp/android/publish/gson/FieldNamingPolicy$2;
.super Lcom/startapp/android/publish/gson/FieldNamingPolicy;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/gson/FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/startapp/android/publish/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/startapp/android/publish/gson/FieldNamingPolicy;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/startapp/android/publish/gson/FieldNamingPolicy;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
