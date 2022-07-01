.class public interface abstract Lccsancom/bumptech/glide/load/model/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final DEFAULT:Lccsancom/bumptech/glide/load/model/Headers;

.field public static final NONE:Lccsancom/bumptech/glide/load/model/Headers;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lccsancom/bumptech/glide/load/model/Headers$1;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/model/Headers$1;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/model/Headers;->NONE:Lccsancom/bumptech/glide/load/model/Headers;

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lccsancom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/load/model/Headers;->DEFAULT:Lccsancom/bumptech/glide/load/model/Headers;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
