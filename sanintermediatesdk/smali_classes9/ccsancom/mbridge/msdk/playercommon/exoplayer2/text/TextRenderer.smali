.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer$ReplacementState;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x0

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2


# instance fields
.field private decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;

.field private decoderReplacementState:I

.field private final formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;

.field private final outputHandler:Lccsanandroid/os/Handler;

.field private outputStreamEnded:Z

.field private streamFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsanandroid/os/Looper;)V
    .locals 1

    .line 97
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;)V
    .locals 1

    .line 111
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/BaseRenderer;-><init>(I)V

    .line 112
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;

    .line 113
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1, p2, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->outputHandler:Lccsanandroid/os/Handler;

    .line 114
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;

    .line 115
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    .line 116
    return-void
.end method

.method private clearOutput()V
    .locals 1

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 309
    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    .line 295
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    .line 294
    :goto_1
    return-wide v0
.end method

.method private invokeUpdateOutputInternal(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 325
    return-void
.end method

.method private releaseBuffers()V
    .locals 2

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    .line 270
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 271
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 273
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    .line 275
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 277
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    .line 279
    :cond_1
    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .line 282
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 283
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->release()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 286
    return-void
.end method

.method private replaceDecoder()V
    .locals 2

    .line 289
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->streamFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    .line 291
    return-void
.end method

.method private updateOutput(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->outputHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 305
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)Z
    .locals 1

    .line 314
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 319
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 316
    :pswitch_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 317
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEnded()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method protected final onDisabled()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->streamFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 252
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 253
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 254
    return-void
.end method

.method protected final onPositionReset(JZ)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 142
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 143
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 144
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-eqz p1, :cond_0

    .line 145
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 148
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->flush()V

    .line 150
    :goto_0
    return-void
.end method

.method protected final onStreamChanged([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 131
    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->streamFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 132
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    if-eqz p2, :cond_0

    .line 133
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    goto :goto_0

    .line 135
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    .line 137
    :goto_0
    return-void
.end method

.method public final render(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 154
    iget-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz p3, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    if-nez p3, :cond_1

    .line 159
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    .line 161
    :try_start_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->getState()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    .line 168
    return-void

    .line 171
    :cond_2
    nop

    .line 172
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 175
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    const/4 p3, 0x0

    .line 176
    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_4

    .line 177
    iget p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr p3, v1

    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 178
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 179
    const/4 p3, 0x1

    goto :goto_1

    .line 172
    :cond_3
    const/4 p3, 0x0

    .line 183
    :cond_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 184
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    if-nez p3, :cond_8

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 186
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, p4, :cond_5

    .line 187
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_2

    .line 189
    :cond_5
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->releaseBuffers()V

    .line 190
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_2

    .line 193
    :cond_6
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 195
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz p3, :cond_7

    .line 196
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 198
    :cond_7
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    .line 199
    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    .line 200
    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result p3

    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 201
    const/4 p3, 0x1

    .line 205
    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 207
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->subtitle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 210
    :cond_9
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne p1, p4, :cond_a

    .line 211
    return-void

    .line 215
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez p1, :cond_10

    .line 216
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_b

    .line 217
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    .line 218
    if-nez p1, :cond_b

    .line 219
    return-void

    .line 222
    :cond_b
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne p1, v1, :cond_c

    .line 223
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->setFlags(I)V

    .line 224
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 225
    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    .line 226
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    .line 227
    return-void

    .line 230
    :cond_c
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->readSource(Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    .line 231
    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 232
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 233
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    goto :goto_4

    .line 235
    :cond_d
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->formatHolder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/FormatHolder;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-wide p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 236
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;->flip()V

    .line 238
    :goto_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoder:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 239
    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->nextInputBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleInputBuffer;
    :try_end_1
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 240
    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_f

    .line 241
    return-void

    .line 243
    :cond_f
    :goto_5
    goto :goto_3

    .line 246
    :cond_10
    nop

    .line 247
    return-void

    .line 244
    :catch_1
    move-exception p1

    .line 245
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)I
    .locals 1

    .line 120
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->decoderFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->drmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextRenderer;->supportsFormatDrm(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 122
    :cond_1
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    const/4 p1, 0x1

    return p1

    .line 125
    :cond_2
    const/4 p1, 0x0

    return p1
.end method
