.class Lccsancom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineResourceFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lccsancom/bumptech/glide/load/engine/Resource;Z)Lccsancom/bumptech/glide/load/engine/EngineResource;
    .locals 1
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TR;>;Z)",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "TR;>;"
        }
    .end annotation

    .line 191
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TR;>;"
    new-instance v0, Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/engine/EngineResource;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Z)V

    return-object v0
.end method
