.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final networkRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 0
    .param p1, "networkRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "cacheResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->networkRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 67
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 68
    return-void
.end method

.method public static isCacheable(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z
    .locals 3
    .param p0, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 76
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 96
    :sswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    goto :goto_0

    .line 89
    :sswitch_1
    nop

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->cacheControl()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 106
    :cond_2
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
