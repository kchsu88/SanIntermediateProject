.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataInternal;
.super Ljava/lang/Object;
.source "ContentMetadataInternal.java"


# static fields
.field private static final METADATA_NAME_CONTENT_LENGTH:Ljava/lang/String; = "exo_len"

.field private static final METADATA_NAME_REDIRECTED_URI:Ljava/lang/String; = "exo_redir"

.field private static final PREFIX:Ljava/lang/String; = "exo_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getContentLength(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;)J
    .locals 3

    .line 31
    const-string v0, "exo_len"

    const-wide/16 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRedirectedUri(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;)Lccsanandroid/net/Uri;
    .locals 2

    .line 46
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v1, "exo_redir"

    invoke-interface {p0, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static removeContentLength(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .locals 1

    .line 41
    const-string v0, "exo_len"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;->remove(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 42
    return-void
.end method

.method public static removeRedirectedUri(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .locals 1

    .line 60
    const-string v0, "exo_redir"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;->remove(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 61
    return-void
.end method

.method public static setContentLength(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;J)V
    .locals 1

    .line 36
    const-string v0, "exo_len"

    invoke-virtual {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;->set(Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 37
    return-void
.end method

.method public static setRedirectedUri(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;Lccsanandroid/net/Uri;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "exo_redir"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;->set(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 56
    return-void
.end method
