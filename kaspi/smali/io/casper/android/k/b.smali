.class public Lio/casper/android/k/b;
.super Ljava/lang/Object;
.source "ResponseStatuses.java"


# static fields
.field public static GOOGLE_AUTHENTICATION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

.field public static GOOGLE_AUTHENTICATION_NEEDS_LESS_SECURE:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/16 v1, -0x3e8

    const-string v2, "Google Authentication details are Incorrect, Please logout and correct them."

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/casper/android/k/b;->GOOGLE_AUTHENTICATION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    .line 8
    new-instance v0, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    const/16 v1, -0x3e9

    const-string v2, "Please enable Less Secure apps via Google account Settings."

    invoke-direct {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/casper/android/k/b;->GOOGLE_AUTHENTICATION_NEEDS_LESS_SECURE:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    return-void
.end method
