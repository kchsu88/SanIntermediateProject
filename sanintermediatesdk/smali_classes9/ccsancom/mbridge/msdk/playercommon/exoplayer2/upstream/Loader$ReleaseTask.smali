.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;

    .line 433
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 437
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    .line 438
    return-void
.end method
