.class public abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1001
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V
    .locals 0
    .param p1, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    .line 1023
    return-void
.end method

.method public abstract onStream(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
