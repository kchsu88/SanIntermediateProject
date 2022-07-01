.class public final Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/google/android/exoplayer2/offline/FilterableManifest<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final parser:Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;, "Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser<TT;>;"
    .local p1, "parser":Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;, "Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<+TT;>;"
    .local p2, "streamKeys":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/offline/StreamKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;->parser:Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 41
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public parse(Lccsanandroid/net/Uri;Ljava/io/InputStream;)Lccsancom/google/android/exoplayer2/offline/FilterableManifest;
    .locals 2
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    .local p0, "this":Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;, "Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;->parser:Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;->parse(Lccsanandroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/offline/FilterableManifest;

    .line 47
    .local v0, "manifest":Lccsancom/google/android/exoplayer2/offline/FilterableManifest;, "TT;"
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/offline/FilterableManifest;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public bridge synthetic parse(Lccsanandroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;, "Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser<TT;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/exoplayer2/offline/FilteringManifestParser;->parse(Lccsanandroid/net/Uri;Ljava/io/InputStream;)Lccsancom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object p1

    return-object p1
.end method
