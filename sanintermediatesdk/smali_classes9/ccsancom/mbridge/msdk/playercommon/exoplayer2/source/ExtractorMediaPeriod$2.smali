.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;-><init>(Lccsanandroid/net/Uri;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$Listener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    .line 167
    :cond_0
    return-void
.end method
