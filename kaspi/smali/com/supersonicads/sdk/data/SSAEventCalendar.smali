.class public Lcom/supersonicads/sdk/data/SSAEventCalendar;
.super Lcom/supersonicads/sdk/data/SSAObj;
.source "SSAEventCalendar.java"


# instance fields
.field private DAILY:Ljava/lang/String;

.field private DAYS_IN_MONTH:Ljava/lang/String;

.field private DAYS_IN_WEEK:Ljava/lang/String;

.field private DAYS_IN_YEAR:Ljava/lang/String;

.field private DESCRIPTION:Ljava/lang/String;

.field private END:Ljava/lang/String;

.field private EXCEPTIONDATES:Ljava/lang/String;

.field private EXPIRES:Ljava/lang/String;

.field private FREQUENCY:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private INTERVAL:Ljava/lang/String;

.field private MONTHLY:Ljava/lang/String;

.field private MONTHS_IN_YEAR:Ljava/lang/String;

.field private RECURRENCE:Ljava/lang/String;

.field private REMINDER:Ljava/lang/String;

.field private START:Ljava/lang/String;

.field private STATUS:Ljava/lang/String;

.field private WEEKLY:Ljava/lang/String;

.field private WEEKS_IN_MONTH:Ljava/lang/String;

.field private YEARLY:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEnd:Ljava/lang/String;

.field private mStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "id"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->ID:Ljava/lang/String;

    .line 7
    const-string v0, "description"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DESCRIPTION:Ljava/lang/String;

    .line 8
    const-string v0, "start"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->START:Ljava/lang/String;

    .line 9
    const-string v0, "end"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->END:Ljava/lang/String;

    .line 10
    const-string v0, "status"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->STATUS:Ljava/lang/String;

    .line 11
    const-string v0, "recurrence"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->RECURRENCE:Ljava/lang/String;

    .line 12
    const-string v0, "reminder"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->REMINDER:Ljava/lang/String;

    .line 15
    const-string v0, "frequency"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->FREQUENCY:Ljava/lang/String;

    .line 16
    const-string v0, "interval"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->INTERVAL:Ljava/lang/String;

    .line 17
    const-string v0, "expires"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->EXPIRES:Ljava/lang/String;

    .line 18
    const-string v0, "exceptionDates"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->EXCEPTIONDATES:Ljava/lang/String;

    .line 19
    const-string v0, "daysInWeek"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DAYS_IN_WEEK:Ljava/lang/String;

    .line 20
    const-string v0, "daysInMonth"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DAYS_IN_MONTH:Ljava/lang/String;

    .line 21
    const-string v0, "daysInYear"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DAYS_IN_YEAR:Ljava/lang/String;

    .line 22
    const-string v0, "weeksInMonth"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->WEEKS_IN_MONTH:Ljava/lang/String;

    .line 23
    const-string v0, "monthsInYear"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->MONTHS_IN_YEAR:Ljava/lang/String;

    .line 26
    const-string v0, "daily"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DAILY:Ljava/lang/String;

    .line 27
    const-string v0, "weekly"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->WEEKLY:Ljava/lang/String;

    .line 28
    const-string v0, "monthly"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->MONTHLY:Ljava/lang/String;

    .line 29
    const-string v0, "yearly"

    iput-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->YEARLY:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->setDescription(Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->START:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->START:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->setStart(Ljava/lang/String;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->END:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->END:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/data/SSAEventCalendar;->setEnd(Ljava/lang/String;)V

    .line 49
    :cond_2
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->mEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->mStart:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->mDescription:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->mEnd:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/supersonicads/sdk/data/SSAEventCalendar;->mStart:Ljava/lang/String;

    .line 65
    return-void
.end method
