.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

.field private bufferForPlaybackAfterRebufferMs:I

.field private bufferForPlaybackMs:I

.field private maxBufferMs:I

.field private minBufferMs:I

.field private prioritizeTimeOverSizeThresholds:Z

.field private priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

.field private targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    .line 78
    const/16 v1, 0x3a98

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->minBufferMs:I

    .line 79
    const v1, 0xc350

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->maxBufferMs:I

    .line 80
    const/16 v1, 0x9c4

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    .line 81
    const/16 v1, 0x1388

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->targetBufferBytes:I

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    .line 84
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 85
    return-void
.end method


# virtual methods
.method public final createDefaultLoadControl()Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;
    .locals 12

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    .line 161
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->minBufferMs:I

    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->maxBufferMs:I

    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    iget v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->targetBufferBytes:I

    iget-boolean v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;IIIIIZLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;)V

    return-object v0
.end method

.method public final setAllocator(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->allocator:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultAllocator;

    .line 95
    return-object p0
.end method

.method public final setBufferDurationsMs(IIII)Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
    .locals 0

    .line 117
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->minBufferMs:I

    .line 118
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->maxBufferMs:I

    .line 119
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackMs:I

    .line 120
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->bufferForPlaybackAfterRebufferMs:I

    .line 121
    return-object p0
.end method

.method public final setPrioritizeTimeOverSizeThresholds(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
    .locals 0

    .line 146
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->prioritizeTimeOverSizeThresholds:Z

    .line 147
    return-object p0
.end method

.method public final setPriorityTaskManager(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 153
    return-object p0
.end method

.method public final setTargetBufferBytes(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;
    .locals 0

    .line 133
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl$Builder;->targetBufferBytes:I

    .line 134
    return-object p0
.end method
