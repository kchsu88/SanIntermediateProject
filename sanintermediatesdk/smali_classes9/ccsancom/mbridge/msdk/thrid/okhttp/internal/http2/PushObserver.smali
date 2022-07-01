.class public interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final CANCEL:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;->CANCEL:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILccsancom/mbridge/msdk/thrid/okio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V
.end method
