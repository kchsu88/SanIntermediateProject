.class final Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage$1;
.super Ljava/lang/Object;
.source "BatchReportMessage.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 48
    nop

    .line 2051
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;-><init>(Lccsanandroid/os/Parcel;)V

    .line 48
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    nop

    .line 1056
    new-array p1, p1, [Lccsancom/mbridge/msdk/foundation/same/report/BatchReportMessage;

    .line 48
    return-object p1
.end method
