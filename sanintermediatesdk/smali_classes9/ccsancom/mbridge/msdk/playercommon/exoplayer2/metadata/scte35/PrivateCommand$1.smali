.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;
.super Ljava/lang/Object;
.source "PrivateCommand.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 2

    .line 76
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;-><init>(Lccsanandroid/os/Parcel;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 0

    .line 81
    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand$1;->newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object p1

    return-object p1
.end method
