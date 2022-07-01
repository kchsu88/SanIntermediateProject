.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame$1;
.super Ljava/lang/Object;
.source "ChapterTocFrame.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 1

    .line 114
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 0

    .line 119
    new-array p1, p1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame$1;->newArray(I)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object p1

    return-object p1
.end method
