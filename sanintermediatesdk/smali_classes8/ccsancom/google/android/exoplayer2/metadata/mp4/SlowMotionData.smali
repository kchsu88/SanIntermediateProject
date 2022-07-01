.class public final Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    .line 137
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->doSegmentsOverlap(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 138
    return-void
.end method

.method private static doSegmentsOverlap(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
            ">;)Z"
        }
    .end annotation

    .line 188
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 192
    .local v2, "previousEndTimeMs":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 193
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    iget-wide v4, v4, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_1

    .line 194
    const/4 v1, 0x1

    return v1

    .line 196
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v4, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    if-ne p0, p1, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 154
    .local v0, "that":Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 151
    .end local v0    # "that":Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lccsancom/google/android/exoplayer2/Format;
    .locals 1

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 159
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic populateMediaMetadata(Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry$-CC;->$default$populateMediaMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SlowMotion: segments="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 169
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 170
    return-void
.end method
