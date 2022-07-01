.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/UnrecognizedInputFormatException;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/UnrecognizedInputFormatException;->uri:Lccsanandroid/net/Uri;

    .line 38
    return-void
.end method
