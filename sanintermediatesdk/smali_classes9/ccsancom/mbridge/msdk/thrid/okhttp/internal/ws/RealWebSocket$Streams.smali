.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field public final source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .locals 0
    .param p1, "client"    # Z
    .param p2, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .param p3, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->client:Z

    .line 606
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 607
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 608
    return-void
.end method
