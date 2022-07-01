.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs createCompositeSequenceableLoader([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;
    .locals 1

    .line 26
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoader;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SequenceableLoader;)V

    return-object v0
.end method
