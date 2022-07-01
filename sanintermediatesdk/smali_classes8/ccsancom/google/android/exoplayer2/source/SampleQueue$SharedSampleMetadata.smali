.class final Lccsancom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedSampleMetadata"
.end annotation


# instance fields
.field public final drmSessionReference:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

.field public final format:Lccsancom/google/android/exoplayer2/Format;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;)V
    .locals 0
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "drmSessionReference"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 1076
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    .line 1077
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;Lccsancom/google/android/exoplayer2/source/SampleQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;
    .param p3, "x2"    # Lccsancom/google/android/exoplayer2/source/SampleQueue$1;

    .line 1070
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;-><init>(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;)V

    return-void
.end method
