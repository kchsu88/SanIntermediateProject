.class public abstract Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lccsanokio/BufferedSink;

.field public final source:Lccsanokio/BufferedSource;


# direct methods
.method public constructor <init>(ZLccsanokio/BufferedSource;Lccsanokio/BufferedSink;)V
    .locals 0
    .param p1, "client"    # Z
    .param p2, "source"    # Lccsanokio/BufferedSource;
    .param p3, "sink"    # Lccsanokio/BufferedSink;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-boolean p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 605
    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->source:Lccsanokio/BufferedSource;

    .line 606
    iput-object p3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->sink:Lccsanokio/BufferedSink;

    .line 607
    return-void
.end method
