.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame$1;
.super Ljava/lang/Object;
.source "ApicFrame.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;
    .locals 1

    .line 95
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;
    .locals 0

    .line 100
    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame$1;->newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    move-result-object p1

    return-object p1
.end method
