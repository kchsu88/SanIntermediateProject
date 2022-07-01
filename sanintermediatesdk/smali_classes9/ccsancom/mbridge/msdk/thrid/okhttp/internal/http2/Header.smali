.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header$Listener;
    }
.end annotation


# static fields
.field public static final PSEUDO_PREFIX:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public static final RESPONSE_STATUS:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"

.field public static final TARGET_AUTHORITY:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"

.field public static final TARGET_METHOD:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"

.field public static final TARGET_PATH:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"

.field public static final TARGET_SCHEME:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"


# instance fields
.field final hpackSize:I

.field public final name:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field public final value:Lccsancom/mbridge/msdk/thrid/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, ":"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->PSEUDO_PREFIX:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 33
    const-string v0, ":status"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->RESPONSE_STATUS:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 34
    const-string v0, ":method"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_METHOD:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 35
    const-string v0, ":path"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_PATH:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 36
    const-string v0, ":scheme"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_SCHEME:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 37
    const-string v0, ":authority"

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_AUTHORITY:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 2
    .param p1, "name"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p2, "value"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->name:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 57
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->value:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 58
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->hpackSize:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 63
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    .line 64
    .local v0, "that":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->name:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->name:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->value:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->value:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 65
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 64
    :goto_0
    return v1

    .line 67
    .end local v0    # "that":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 71
    const/16 v0, 0x11

    .line 72
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->name:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 73
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->value:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 74
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->name:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->value:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
