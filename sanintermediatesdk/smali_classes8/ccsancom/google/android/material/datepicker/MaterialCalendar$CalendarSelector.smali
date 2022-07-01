.class final enum Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
.super Ljava/lang/Enum;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/MaterialCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CalendarSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public static final enum DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field public static final enum YEAR:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 65
    new-instance v1, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const-string v3, "YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 63
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->$VALUES:[Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    return-object v0
.end method

.method public static values()[Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    .locals 1

    .line 63
    sget-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->$VALUES:[Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {v0}, [Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    return-object v0
.end method
