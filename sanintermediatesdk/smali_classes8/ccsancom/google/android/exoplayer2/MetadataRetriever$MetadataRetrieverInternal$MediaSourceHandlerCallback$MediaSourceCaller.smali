.class final Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSourceCaller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;
    }
.end annotation


# instance fields
.field private final allocator:Lccsancom/google/android/exoplayer2/upstream/Allocator;

.field private final mediaPeriodCallback:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

.field private mediaPeriodCreated:Z

.field final synthetic this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)V
    .locals 2

    .line 183
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance p1, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;-><init>(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;Lccsancom/google/android/exoplayer2/MetadataRetriever$1;)V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCallback:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    .line 185
    new-instance p1, Lccsancom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    invoke-direct {p1, v0, v1}, Lccsancom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->allocator:Lccsancom/google/android/exoplayer2/upstream/Allocator;

    .line 189
    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lccsancom/google/android/exoplayer2/source/MediaSource;Lccsancom/google/android/exoplayer2/Timeline;)V
    .locals 5
    .param p1, "source"    # Lccsancom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    .line 193
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCreated:Z

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCreated:Z

    .line 198
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    new-instance v1, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p2, v2}, Lccsancom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->allocator:Lccsancom/google/android/exoplayer2/upstream/Allocator;

    .line 199
    const-wide/16 v3, 0x0

    invoke-interface {p1, v1, v2, v3, v4}, Lccsancom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/google/android/exoplayer2/upstream/Allocator;J)Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->access$502(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;Lccsancom/google/android/exoplayer2/source/MediaPeriod;)Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    .line 203
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->this$1:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;->access$500(Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback;)Lccsancom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller;->mediaPeriodCallback:Lccsancom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal$MediaSourceHandlerCallback$MediaSourceCaller$MediaPeriodCallback;

    invoke-interface {v0, v1, v3, v4}, Lccsancom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lccsancom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 204
    return-void
.end method
