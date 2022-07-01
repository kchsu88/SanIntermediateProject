.class public final Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DEEP_COPY_VALIDATOR_KEY:Ljava/lang/String; = "DEEP_COPY_VALIDATOR_KEY"

.field static final DEFAULT_END:J

.field static final DEFAULT_START:J


# instance fields
.field private end:J

.field private openAt:Ljava/lang/Long;

.field private start:J

.field private validator:Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 203
    nop

    .line 204
    const/16 v0, 0x76c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/Month;->create(II)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    .line 209
    nop

    .line 210
    const/16 v0, 0x834

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/Month;->create(II)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    .line 209
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-wide v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 215
    sget-wide v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 217
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lccsancom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 219
    return-void
.end method

.method constructor <init>(Lccsancom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 2
    .param p1, "clone"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-wide v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_START:J

    iput-wide v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 215
    sget-wide v0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->DEFAULT_END:J

    iput-wide v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 217
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/DateValidatorPointForward;->from(J)Lccsancom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 222
    invoke-static {p1}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->access$100(Lccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 223
    invoke-static {p1}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->access$200(Lccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    iput-wide v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 224
    invoke-static {p1}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->access$300(Lccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-wide v0, v0, Lccsancom/google/android/material/datepicker/Month;->timeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 225
    invoke-static {p1}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->access$400(Lccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 226
    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .locals 9

    .line 322
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 323
    .local v0, "deepCopyBundle":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 324
    new-instance v1, Lccsancom/google/android/material/datepicker/CalendarConstraints;

    iget-wide v3, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 325
    invoke-static {v3, v4}, Lccsancom/google/android/material/datepicker/Month;->create(J)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v4

    iget-wide v5, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 326
    invoke-static {v5, v6}, Lccsancom/google/android/material/datepicker/Month;->create(J)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v5

    .line 327
    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v7, v2

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lccsancom/google/android/material/datepicker/Month;->create(J)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    move-object v7, v2

    :goto_0
    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lccsancom/google/android/material/datepicker/CalendarConstraints;-><init>(Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/CalendarConstraints$1;)V

    .line 324
    return-object v1
.end method

.method public setEnd(J)Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .param p1, "month"    # J

    .line 278
    iput-wide p1, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->end:J

    .line 279
    return-object p0
.end method

.method public setOpenAt(J)Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 1
    .param p1, "month"    # J

    .line 305
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->openAt:Ljava/lang/Long;

    .line 306
    return-object p0
.end method

.method public setStart(J)Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .param p1, "month"    # J

    .line 251
    iput-wide p1, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->start:J

    .line 252
    return-object p0
.end method

.method public setValidator(Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;)Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;
    .locals 0
    .param p1, "validator"    # Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 315
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/CalendarConstraints$Builder;->validator:Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 316
    return-object p0
.end method
