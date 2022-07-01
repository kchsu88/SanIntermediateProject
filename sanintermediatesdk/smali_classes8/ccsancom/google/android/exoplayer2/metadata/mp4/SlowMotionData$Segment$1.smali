.class Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment$1;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
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
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
    .locals 12
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 114
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 115
    .local v6, "startTimeMs":J
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 116
    .local v8, "endTimeMs":J
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v10

    .line 117
    .local v10, "speedDivisor":I
    new-instance v11, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-object v0, v11

    move-wide v1, v6

    move-wide v3, v8

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
    .locals 1
    .param p1, "size"    # I

    .line 122
    new-array v0, p1, [Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment$1;->newArray(I)[Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-result-object p1

    return-object p1
.end method
