.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
        "Ljava/lang/Comparable<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_UNSET:I = -0x1


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIFZI)V

    .line 55
    iput p11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;->priority:I

    .line 56
    return-void
.end method


# virtual methods
.method public final compareTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;)I
    .locals 1

    .line 60
    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-ge p1, v0, :cond_0

    .line 61
    const/4 p1, -0x1

    return p1

    .line 62
    :cond_0
    if-le p1, v0, :cond_1

    .line 63
    const/4 p1, 0x1

    return p1

    .line 65
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;->compareTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea708Cue;)I

    move-result p1

    return p1
.end method
