.class public interface abstract Lccsancom/google/android/exoplayer2/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;,
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;,
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;,
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;,
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;,
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;,
        Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final REJECT_PAYWALL_TYPES:Lccsancom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    sget-object v0, Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Lccsancom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public abstract clearAllRequestProperties()V
.end method

.method public abstract clearRequestProperty(Ljava/lang/String;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Lccsancom/google/android/exoplayer2/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method
