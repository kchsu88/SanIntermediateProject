.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand$1;
.super Ljava/lang/Object;
.source "TimeSignalCommand.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;
    .locals 7

    .line 83
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;

    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJLccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand$1;)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;
    .locals 0

    .line 88
    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand$1;->newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object p1

    return-object p1
.end method
