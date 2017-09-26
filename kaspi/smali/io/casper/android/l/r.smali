.class public Lio/casper/android/l/r;
.super Lio/casper/android/l/a/a;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/l/r$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public A()Lio/casper/android/l/r$a;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_casper"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 139
    sget-object v0, Lio/casper/android/l/r$a;->CASPER:Lio/casper/android/l/r$a;

    :goto_1
    return-object v0

    .line 127
    :sswitch_0
    const-string v2, "camera_casper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "camera_default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_0
    sget-object v0, Lio/casper/android/l/r$a;->CASPER:Lio/casper/android/l/r$a;

    goto :goto_1

    .line 134
    :pswitch_1
    sget-object v0, Lio/casper/android/l/r$a;->INSTALLED_APP:Lio/casper/android/l/r$a;

    goto :goto_1

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6371b4d9 -> :sswitch_1
        -0x5ff3047e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public B()I
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "30"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification Interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07015c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/r;->c(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07015d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/r;->c(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070161

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070163

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070157

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070160

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070162

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->c(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07015c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lio/casper/android/l/r;->mContext:Landroid/content/Context;

    const v1, 0x7f07015d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVERYONE"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
