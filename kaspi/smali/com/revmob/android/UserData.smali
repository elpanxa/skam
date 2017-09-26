.class public Lcom/revmob/android/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field private static addr:Ljava/lang/String; = null

.field private static final ageLimit:I = 0xd

.field private static birth:Ljava/util/Calendar;

.field private static maxAge:I

.field private static minAge:I

.field private static preferenc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sex:Lcom/revmob/RevMobUserGender;

.field private static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 17
    sget-object v0, Lcom/revmob/RevMobUserGender;->UNDEFINED:Lcom/revmob/RevMobUserGender;

    sput-object v0, Lcom/revmob/android/UserData;->sex:Lcom/revmob/RevMobUserGender;

    .line 18
    sput v2, Lcom/revmob/android/UserData;->minAge:I

    .line 19
    sput v2, Lcom/revmob/android/UserData;->maxAge:I

    .line 20
    sput-object v1, Lcom/revmob/android/UserData;->birth:Ljava/util/Calendar;

    .line 21
    sput-object v1, Lcom/revmob/android/UserData;->url:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/4 v3, -0x1

    .line 35
    sget v0, Lcom/revmob/android/UserData;->minAge:I

    if-eq v0, v3, :cond_0

    .line 36
    const-string v0, "age_range_min"

    sget v1, Lcom/revmob/android/UserData;->minAge:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    :cond_0
    sget v0, Lcom/revmob/android/UserData;->maxAge:I

    if-eq v0, v3, :cond_1

    .line 40
    const-string v0, "age_range_max"

    sget v1, Lcom/revmob/android/UserData;->maxAge:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    :cond_1
    sget v0, Lcom/revmob/android/UserData;->minAge:I

    if-lez v0, :cond_3

    sget v0, Lcom/revmob/android/UserData;->maxAge:I

    if-ge v0, v4, :cond_3

    .line 85
    :cond_2
    :goto_0
    return-object p0

    .line 47
    :cond_3
    sget-object v0, Lcom/revmob/android/UserData;->birth:Ljava/util/Calendar;

    if-eqz v0, :cond_4

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    const-string v1, "birthday"

    sget-object v2, Lcom/revmob/android/UserData;->birth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 54
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 55
    sget-object v2, Lcom/revmob/android/UserData;->birth:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 63
    :cond_4
    sget-object v0, Lcom/revmob/android/UserData;->addr:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 64
    const-string v0, "email"

    sget-object v1, Lcom/revmob/android/UserData;->addr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_5
    sget-object v0, Lcom/revmob/android/UserData;->sex:Lcom/revmob/RevMobUserGender;

    if-eqz v0, :cond_6

    .line 68
    const-string v0, "gender"

    sget-object v1, Lcom/revmob/android/UserData;->sex:Lcom/revmob/RevMobUserGender;

    invoke-virtual {v1}, Lcom/revmob/RevMobUserGender;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_6
    sget-object v0, Lcom/revmob/android/UserData;->url:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 72
    const-string v0, "user_page"

    sget-object v1, Lcom/revmob/android/UserData;->url:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_7
    sget-object v0, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 79
    sget-object v2, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_8
    const-string v0, "interests"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method public static getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/revmob/android/UserData;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgeRangeMax()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/revmob/android/UserData;->maxAge:I

    return v0
.end method

.method public static getUserAgeRangeMin()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/revmob/android/UserData;->minAge:I

    return v0
.end method

.method public static getUserBirthday()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/revmob/android/UserData;->birth:Ljava/util/Calendar;

    return-object v0
.end method

.method public static getUserGender()Lcom/revmob/RevMobUserGender;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/revmob/android/UserData;->sex:Lcom/revmob/RevMobUserGender;

    return-object v0
.end method

.method public static getUserInterests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    return-object v0
.end method

.method public static getUserPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/revmob/android/UserData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    sput-object p0, Lcom/revmob/android/UserData;->addr:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public static setUserAgeRangeMax(I)V
    .locals 0

    .prologue
    .line 109
    sput p0, Lcom/revmob/android/UserData;->maxAge:I

    .line 110
    return-void
.end method

.method public static setUserAgeRangeMin(I)V
    .locals 0

    .prologue
    .line 101
    sput p0, Lcom/revmob/android/UserData;->minAge:I

    .line 102
    return-void
.end method

.method public static setUserBirthday(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 117
    sput-object p0, Lcom/revmob/android/UserData;->birth:Ljava/util/Calendar;

    .line 118
    return-void
.end method

.method public static setUserGender(Lcom/revmob/RevMobUserGender;)V
    .locals 0

    .prologue
    .line 93
    sput-object p0, Lcom/revmob/android/UserData;->sex:Lcom/revmob/RevMobUserGender;

    .line 94
    return-void
.end method

.method public static setUserInterests(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    sput-object p0, Lcom/revmob/android/UserData;->preferenc:Ljava/util/List;

    .line 134
    return-void
.end method

.method public static setUserPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    sput-object p0, Lcom/revmob/android/UserData;->url:Ljava/lang/String;

    .line 126
    return-void
.end method
